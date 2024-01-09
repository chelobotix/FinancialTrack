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
        respond_to do |format|
          flash.now[:alert] = 'Coin not found'
          format.js { render(partial: 'users/crypto_js') }
        end
      end
    else

      respond_to do |format|
        flash.now[:alert] = 'Please, enter a crypto to search'
        format.js { render(partial: 'users/crypto_js') }
      end
    end
  end
end
