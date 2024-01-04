require 'httparty'

class CryptosController < ApplicationController
  # Search
  def search
    if params[:crypto_name].present?
      @crypto = Crypto.new_search(params[:crypto_name].strip)
      if !@crypto.eql?('coin not found')
        respond_to do |format|
          format.js { render(partial: 'users/crypto_js') }
        end
      else
        @crypto = nil
        flash[:alert] = 'Coin not found'
        redirect_to(my_portfolio_path)
      end
    else
      flash[:alert] = 'Please, enter a crypto to search'
      redirect_to(my_portfolio_path)
    end
  end
end
