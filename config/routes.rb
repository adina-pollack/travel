Rails.application.routes.draw do
  root to: "home#index"
  resources :users
  resource :session
  resources :locations
end
