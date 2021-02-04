Rails.application.routes.draw do
  get 'privacy/politica_privacidade'
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
  get 'example', to: "example#index"
  get 'meo_p', to: "example#meo", hidden: true
  get 'nos_p', to: "example#nos"
  get 'cocacola', to: "pages#cocacola"
  
  #Pacotes MEO
  scope :servicos do
    scope :fibra do
      scope :casas, module: 'pacotes' do
        get 'pacotes_meo', to: "pacotes_meo#index"
        get 'tv_net_voz', to: "pacotes_meo#tv_net_voz", as: "tv_net_voz_meo"
        get 'telemovel', to: "pacotes_meo#telemovel", as: "telemovel_meo"
        get 'gaming', to: "pacotes_meo#gaming", as: "gaming_meo"
        get 'outros', to: "pacotes_meo#outros", as: "outros_meo"
      end
      
      #Pacotes NOS
      scope :particulares, module: 'pacotes' do
        get 'pacotes_nos', to: "pacotes_nos#index"
        get 'tv_net_voz', to: "pacotes_nos#tv_net_voz", as: "tv_net_voz_nos"
        get 'telemovel', to: "pacotes_nos#telemovel", as: "telemovel_nos"
        get 'net', to: "pacotes_nos#net", as: "net_nos"
        get 'outros', to: "pacotes_nos#outros", as: "outros_nos"
      end
      
      #Pacotes VODAFONE
      scope :coberturas, module: 'pacotes' do
        get 'pacotes_vodafone', to: "pacotes_vodafone#index"
        get 'telemovel', to: "pacotes_vodafone#telemovel", as: "telemovel_vodafone"
        get 'tv_net_voz', to: "pacotes_vodafone#tv_net_voz", as: "tv_net_voz_vodafone"
        get 'net', to: "pacotes_vodafone#net", as: "net_vodafone"
        get 'outros', to: "pacotes_vodafone#outros", as: "outros_vodafone"
      end
      
      #Pacotes NOWO
      scope :destaques, module: 'pacotes' do
        get 'pacotes_nowo', to: "pacotes_nowo#index"
        get 'tv_net_voz', to: "pacotes_nowo#tv_net_voz", as: "tv_net_voz_nowo"
        get 'telemovel', to: "pacotes_nowo#telemovel", as: "telemovel_nowo"
        get 'outros', to: "pacotes_nowo#outros", as: "outros_nowo"
      end
    end

    scope :termos_condicoes_e_politica_privacidade do
      get '/', to: "privacy#index"
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