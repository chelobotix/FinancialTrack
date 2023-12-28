class CryptosController < ApplicationController
  # Search
  def search
    @crypto = Crypto.new_search(params[:crypto_name])
    render('users/my_portfolio')
  end
end
