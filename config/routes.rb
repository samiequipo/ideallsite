Rails.application.routes.draw do
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
  #Services templated
  namespace :other do
    get 'services/meo'
    get 'services/nos'
    get 'services/vodafone'
    get 'services/nowo'
    get 'services/family'
    get 'services/business'
    get 'services/gamers'
  end

  #Specific part of page
  get '/service', to: redirect('/#service')
  get '/portfolio', to: redirect('/#portfolio')
  get '/about', to: redirect('/#about')
  get '/contact', to: redirect('/#contact')

end