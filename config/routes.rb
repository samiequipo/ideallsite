Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]

  get '/loginss' => "contacts#new"
  get "/login", to: "pages#index", id: "contact"


end
