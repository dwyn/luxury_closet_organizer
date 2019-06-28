Rails.application.routes.draw do


  root 'sessions#home'

  resources :users
  resources :sessions
  resources :shoes
  resources :handbags
  resources :designers



  #get 'signup', to: 'users#new', as: 'signup'
  get '/signup', to: 'users#new'
  get '/login', to:'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
