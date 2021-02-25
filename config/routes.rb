Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  get '/login', to: 'users#login'
  post '/login', to: 'users#signin'
  root to: 'events#index'
  resources :events, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
