require 'httparty'

class CryptosController < ApplicationController
  # Search
  def search
    if params[:crypto_name].present?
      @crypto = Crypto.new_search(params[:crypto_name].strip)

      render(
        turbo_stream: turbo_stream.replace(
          'response',
          partial: 'users/crypto',
          locals: { crypto: @crypto, datos: 'secau' }
        )
      )

    else
      flash[:alert] = "The search can't be empty"
      redirect_to(my_portfolio_path)
    end
  end
end
