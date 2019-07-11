Rails.application.routes.draw do
  root 'sessions#home'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post'/signup' => 'users#create'





  #omniauth callback
 #get '/auth/facebook/callback' =>  'sessions#fbcreate'


  resources :shoes
  resources :handbags
  resources :users


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
