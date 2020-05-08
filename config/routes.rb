Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # HTTP_VERB PATH, to: 'CONTROLLER#ACTION'

  resources :prendas


  #get 'prendas', to: 'prendas#index'
  #
  #get 'prendas/:id', to: 'prendas#show'
  #
  #delete 'prendas/:id', to: 'prendas#destroy'
  #put 'prendas/:id', to: 'prendas#update'
  #post 'prendas', to: 'prendas#create'
  #
  #
  # Verificar con rails routes

end
