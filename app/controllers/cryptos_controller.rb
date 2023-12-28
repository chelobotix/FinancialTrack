class CryptosController < ApplicationController
  # Search
  def search
    if params[:crypto_name].present?
      @crypto = Crypto.new_search(params[:crypto_name].strip)
    else
      flash.now[:alert] = "The search can't be empty"
    end
    render('users/my_portfolio')
  end
end
