require 'coingecko_ruby'
require 'httparty'

class Crypto < ApplicationRecord
  # New Search
  def self.new_search
    api_key = Rails.application.credentials.coingecko[:api_key]
    HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&locale=en')
  end
end
