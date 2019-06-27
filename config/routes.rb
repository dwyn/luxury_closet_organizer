Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :shoes
  resources :handbags
  resources :designers

  #get 'home/index'

  #get 'signup', to: 'users#new', as: 'signup'
  get '/signup', to: "users#new"
  get '/login', to:'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'


  get 'home/about'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
