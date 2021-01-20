Rails.application.routes.draw do
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
  #Services templated
  namespace :servicos do
    namespace :pacotes do
      scope :meo, as: 'meo' do  
        get 'telemovel', to: "meo#telemovel"
        get 'tv_net_voz', to: "meo#tv_net_voz"
        get 'gaming', to: "meo#gaming"
        get 'outros', to: "meo#outros"
      end

      scope :nos, as: 'nos' do  
        get 'telemovel', to: "nos#telemovel"
        get 'tv_net_voz', to: "nos#tv_net_voz"
        get 'net', to: "nos#tv_net_voz"
        get 'outros', to: "nos#outros"
      end

      scope :vodafone do  
        #Wait...
      end
      
      scope :nowo, as: 'nowo' do  
        get 'telemovel', to: "nowo#telemovel"
        get 'tv_net_voz', to: "nowo#tv_net_voz"
        get 'outros', to: "nowo#outros"
      end
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