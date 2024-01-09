require 'httparty'

class Crypto < ApplicationRecord
  has_many :user_cryptos, dependent: :destroy
  has_many :users, through: :user_cryptos

  validates :name, :symbol, presence: true, uniqueness: true
  # New Search
  def self.new_search(crypto_name)
    api_key = Rails.application.credentials.coingecko[:api_key]
    crypto = HTTParty.get("https://api.coingecko.com/api/v3/coins/#{crypto_name.downcase}?x_cg_demo_api_key=#{api_key}")

    return 'coin not found' if crypto['error']

    new(
      name: crypto['name'].downcase,
      symbol: crypto['symbol'],
      last_price: crypto['market_data']['current_price']['usd'],
      image: crypto['image']['large'],
      description: crypto['description']['en']
    )
  end

  # crypto_exists
  def self.crypto_exists?(crypto_name)
    Crypto.find_by(name: crypto_name.downcase)
  end
end
