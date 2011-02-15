class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string                        :person_type
      t.integer                       :fmno
      t.string                        :first_name
      t.string                        :last_name
      t.string                        :preferred_name
      t.string                        :individual_status
      t.date                          :hire_date
      t.integer                       :vendor_id
      t.string                        :goc_office_name
      t.string                        :position_firmwide_name
      t.string                        :position_category
      t.string                        :gender
      t.string                        :email
      t.string                        :department_name
      t.string                        :voip
      t.string                        :mobile
      t.string                        :office
      t.string                        :location_office_name
      t.string                        :mckinsey_career_title
      t.integer                       :office_country_access_code
      t.integer                       :office_city_access_code
      t.integer                       :mobile_country_access_code
      t.integer                       :fax_country_access_code
      t.integer                       :fax_city_access_code
      t.integer                       :fax_phone_number
      t.integer                       :person_id
    end 
  end

  def self.down
    drop_table :people
  end
end
