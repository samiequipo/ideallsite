Rails.application.routes.draw do
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
  get 'cocacola', to: "pages#cocacola"

  scope :servicos do
    scope :pacotes do
      get 'meo', to: "pages#meo"
      get 'nos', to: "pages#nos"
      get 'vodafone', to: "pages#vodafone"
      get 'nowo', to: "pages#nowo"
      get 'family', to: "pages#family"
      get 'business', to: "pages#business"
      get 'gamers', to: "pages#gamers"
    end
  end
end

# Give to man => 11
# idealsite.herokuapp.com/#services
# idealsite.herokuapp.com/#portfolio
# idealsite.herokuapp.com/#about
# idealsite.herokuapp.com/#contact
# idealsite.herokuapp.com/other/meo
# idealsite.herokuapp.com/other/nos
# idealsite.herokuapp.com/other/vodafone
# idealsite.herokuapp.com/other/nowo
# idealsite.herokuapp.com/other/family
# idealsite.herokuapp.com/other/business
# idealsite.herokuapp.com/other/gamers