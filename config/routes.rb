Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
end
