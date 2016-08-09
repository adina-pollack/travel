Rails.application.routes.draw do
  root to: "home#index"
  resources :users
  resources :session
  resources :locations
end
