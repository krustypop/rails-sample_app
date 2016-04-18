Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  get '/signup', to: 'users#new'
  resources :users

  namespace :admin do
    root :to => 'dashboard#index'
  end
end
