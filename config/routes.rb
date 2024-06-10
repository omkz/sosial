Rails.application.routes.draw do
  resources :posts do
    resources :comments
    member do
      post "like", to: "posts#like" # /posts/:id/like
      delete "unlike", to: "posts#unlike" # posts/:id/unlike
    end
  end

  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"
end
