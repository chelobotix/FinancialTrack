Rails.application.routes.draw do

  root 'pages#index'

  # Pages
  get "about", to: "pages#about"

  # Devise
  devise_for :users

  # User
  get "my_portfolio", to: "users#my_portfolio"

  # Cryptos
  get "search", to: "cryptos#search"

  # User_cryptos
  resources :user_cryptos, only: [:create, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
