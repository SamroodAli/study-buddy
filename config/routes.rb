Rails.application.routes.draw do

  root 'users#show'

  devise_for :users

  resources :users, only: [:show]
  resources :study_sessions, only:[:index,:new,:create,:show]
  resources :groups, only: [:index]
end
