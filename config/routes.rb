Rails.application.routes.draw do
  root :to => 'pages#home'

  get 'contact'   => 'pages#contact'
  get 'about'     => 'pages#about'
  get 'signup'    => 'users#new'
  get 'login'     => 'sessions#new'
  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users

  namespace :admin do
    root :to => 'dashboard#index'
  end
end
