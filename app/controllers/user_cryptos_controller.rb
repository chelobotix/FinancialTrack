class UserCryptosController < ApplicationController
  # Create
  def create
    crypto = Crypto.crypto_exists?(params[:crypto_name])

    if crypto.blank?
      crypto = Crypto.new_search(params[:crypto_name])
      crypto.save!
    end

    UserCrypto.create!(user: current_user, crypto:)
    flash[:notice] = "Crypto #{crypto.name.capitalize} has been added to tracked list"
    redirect_to(my_portfolio_path)
  end

  private

  def user_cryptos_params
    params.require(:user_cryptos).permit(:name, :symbol, :last_price, :description, :image)
  end
end
