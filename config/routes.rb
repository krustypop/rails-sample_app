Rails.application.routes.draw do
  root 'pages#home', as: 'home'

  get 'pages/contact', as: 'contact'

  get 'pages/about', as: 'about'

  namespace :admin do
    get '/',  to: 'dashboard#index'
  end
end
