class User < ApplicationRecord
  has_many :user_cryptos, dependent: :destroy
  has_many :cryptos, through: :user_cryptos

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
