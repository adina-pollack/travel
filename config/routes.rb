Rails.application.routes.draw do
  root to: "home#index"
  resources :users
  resources :sessions
  resources :locations
end
