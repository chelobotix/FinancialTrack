require 'httparty'

class Crypto < ApplicationRecord
  # New Search
  def self.new_search(crypto_name)
    api_key = Rails.application.credentials.coingecko[:api_key]
    crypto = HTTParty.get("https://api.coingecko.com/api/v3/coins/#{crypto_name}")

    return 'coin not found' if crypto['error']

    new(
      name: crypto['name'],
      symbol: crypto['symbol'],
      last_price: crypto['market_data']['current_price']['usd'],
      image: crypto['image']['large'],
      description: crypto['description']['en']
    )
  end
end
