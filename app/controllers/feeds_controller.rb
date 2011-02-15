class FeedsController < ApplicationController
  def index
    @yahoo_news = YahooNews.recent_news	
    @yahoo_finances = YahooFinance.recent_finance_updates
  end
end
