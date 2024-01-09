require 'faker'

User.create!(email: 'greenshamanbolivia@gmail.com', password: '111111')

 5.times do
  User.create!(email: Faker::Internet.email, password: '111111')
 end

 Crypto.create!(name: "bitcoin", symbol: "btc")
 Crypto.create!(name: "dogecoin", symbol: "doge")
