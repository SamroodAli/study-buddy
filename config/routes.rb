Rails.application.routes.draw do

  get 'sessions/index'
  get 'sessions/show'
  get 'users/show'
  devise_for :users
  resources :users, only: [:show]
  root 'users#show'
end
