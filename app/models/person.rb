class Person < ActiveRecord::Base
  self.include_root_in_json = false
  def self.redis
    @redis ||= Redis.new(:host => 'localhost', :port => 6379, :password => "123")
  end

  def redis
    self.class.redis
  end


  named_scope :scoped_all, :select => ["preferred_name, last_name, vendor_id, voip"]


  def self.autocomplete(q)
    redis.set_union("person:auto:last_name:#{q}", "person:auto:preferred_name:#{q}", "person:auto:voip:#{q}")[0..10].to_json
  end

  def self.generate_autocomplete_indexes
    Person.scoped_all.each do |person|
      person.generate_index
    end
  end


  def generate_index
    %w(last_name preferred_name voip).each do |field|
      value = self.send(field)
      len = 2
      indexes = []
      next unless value
      while len <= value.length
        str = value[0, len].gsub(/\s+/, '.').downcase
        indexes << "person:auto:#{field}:#{str}"
        len += 1
      end
      exec_pipelined_index_cmd(:sadd, indexes)
    end
  end

  private
  def exec_pipelined_index_cmd(cmd, indexes)
    return if indexes.empty?
    redis.pipelined do |pipe|
      indexes.each do |key|
        pipe.send(cmd, key, self.to_json)
      end
    end
  end
end
