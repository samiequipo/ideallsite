Rails.application.routes.draw do
  get 'contacts/_form'
  get 'contacts/_contact_result'
  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
