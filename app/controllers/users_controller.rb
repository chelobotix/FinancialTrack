class UsersController < ApplicationController
  def my_portfolio
    @tracked_cryptos = current_user.cryptos
    puts @tracked_cryptos
  end
end
