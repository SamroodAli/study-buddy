Rails.application.routes.draw do

  root 'users#show'

  resources :study_sessions, only:[:index,:new,:create,:show]
  resources :groups, only: [:index,:new,:create]
  resources :users
end
