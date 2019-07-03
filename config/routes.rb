Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #omniauth callback
 #get '/auth/facebook/callback' =>  'sessions#fbcreate'

 resources :users
 resources :sessions
  #resources :shoes
  resources :shoes, only:[:new, :create, :show, :index]
  resources :handbags


  #omniauth callback
 #get '/auth/facebook/callback' =>  'sessions#fbcreate'

  #get '/handbags' => 'handbags#index'
  #get '/handbags/new' => 'handbags#new'
  #post '/handbags' => 'handbags#create'
  #get '/handbags/:id' => 'handbags#show'
  #get 'handbags/:id/edit' => 'handbags#edit'
  #get '/handbags/:id' => 'handbags#show'
  #patch '/handbags/:id' => 'handbags#update'
  #put '/handbags/:id' => 'handbags#update'
  #delete 'handbags/:id' => 'handbags#destroy'

#resources :handbags, only: [ :new, :create, :post, :index, :show]






  #nested routes(handbags belong to users; shoes belong to users)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
