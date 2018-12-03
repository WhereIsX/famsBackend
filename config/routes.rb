Rails.application.routes.draw do

  resources :groups, only: [:index, :show, :create, :update, :destroy]
  resources :media, only: :create
  resources :members, only: :create
  resources :users, only: :create
end
