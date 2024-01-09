require 'pry'

class User < ApplicationRecord
  has_many :user_cryptos, dependent: :destroy
  has_many :cryptos, through: :user_cryptos

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # crypto_already_tracked?
  def crypto_already_tracked?(crypto_name)
    cryptos.exists?(name: crypto_name)
  end

  # under_stock_limit?
  def under_stock_limit?
    cryptos.count <= 10
  end

  # can_track_crypto?
  def can_track_crypto?(crypto_name)
    under_stock_limit? && !crypto_already_tracked?(crypto_name.downcase)
  end
end
