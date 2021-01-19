Rails.application.routes.draw do
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
  #Services templated
  scope :servicos do
    scope :pacotes do
      get 'services/meo'
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