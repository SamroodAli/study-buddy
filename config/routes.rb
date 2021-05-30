Rails.application.routes.draw do

  get 'groups/index'
  get 'groups/show'
  get 'groups/new'
  root 'users#show'

  devise_for :users

  resources :users, only: [:show]
  resources :study_sessions, only:[:index,:new,:create,:show]
end
