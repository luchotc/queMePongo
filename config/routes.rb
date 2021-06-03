Rails.application.routes.draw do
  resources :users

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # HTTP_VERB PATH, to: 'CONTROLLER#ACTION'

  resources :prendas

end
