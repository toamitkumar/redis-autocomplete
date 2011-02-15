require 'net/http'
require 'uri'
class YahooNews
  def self.recent_news
    Rails.cache.fetch("yahoo_news", :expires_in => 25.seconds) {
      url = URI.parse("http://search.yahooapis.com/NewsSearchService/V1/newsSearch?appid=YahooDemo&query=madonna&results=2&language=en")
      Net::HTTP.get_response(url).body
    }
  end
end
