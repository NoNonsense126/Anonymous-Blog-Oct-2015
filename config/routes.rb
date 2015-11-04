Rails.application.routes.draw do
  root "static_pages#index"

  resources :blogs

  resources :users, only: :show

  get '/signup', to: "registrations#new", as: 'new_signup'
  post '/signup', to: "registrations#create", as: 'signup'

  get '/login', to: "sessions#new", as: 'new_login'
  post '/login', to: "sessions#create", as: 'login'
  delete '/logout', to: "sessions#destroy", as: 'logout'
end
