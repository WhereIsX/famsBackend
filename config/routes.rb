Rails.application.routes.draw do

  get '/groups/myGroups', to: 'groups#myGroups'
  get '/users/profile', to: 'users#profile'
  post '/login', to: 'auth#create'

  resources :groups, only: [:index, :show, :create, :update, :destroy]
  resources :media, only: [:create, :update, :destroy]
  resources :users, only: [:create, :destroy]


end
