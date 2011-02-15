require 'net/http'
require 'uri'
class YahooFinance
  def self.recent_finance_updates
    Rails.cache.fetch("yahoo_finance", :expires_in => 25.seconds) {
      url = URI.parse("http://finance.yahoo.com/rss/headline?s=yhoo")
      Net::HTTP.get_response(url).body
    }
  end
end
