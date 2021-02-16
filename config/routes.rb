Rails.application.routes.draw do
  #Admin devise 2, root and getting user data
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #Root and contact_modal path
  root 'pages#index'
  resources :contacts, only: [:new, :create]
  
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