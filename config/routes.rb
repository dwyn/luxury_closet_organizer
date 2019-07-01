Rails.application.routes.draw do


  root 'sessions#home'

  resources :users
  resources :sessions
  resources :shoes
  resources :handbags
  #resources :designers



  #get 'signup', to: 'users#new', as: 'signup'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
