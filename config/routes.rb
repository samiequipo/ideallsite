Rails.application.routes.draw do
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
  get 'example', to: "example#index"
  get 'meo_p', to: "example#meo"
  get 'nos_p', to: "example#nos"
  get 'cocacola', to: "pages#cocacola"

  scope :servicos do # /servicos/pacotes/pacotes_meo
    scope :pacotes, module: 'pacotes' do
      get 'pacotes_meo', to: "pacotes_meo#index"
      get 'pacotes_nos', to: "pages#nos"
      get 'pacotes_vodafone', to: "pages#vodafone"
      get 'pacotes_nowo', to: "pages#nowo"
      get 'pacotes_family', to: "pages#family"
      get 'pacotes_business', to: "pages#business"
      get 'pacotes_gamers', to: "pages#gamers"
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