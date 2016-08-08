Rails.application.routes.draw do
    match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
    match 'auth/failure', to: redirect('/'), via: [:get, :post]
    match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

    resources :sessions, only: [:create, :destroy]
    resources :home
end
