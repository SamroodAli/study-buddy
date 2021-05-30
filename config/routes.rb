Rails.application.routes.draw do

  get 'sessions/new'
  root 'users#show'

  get     '/signup',    to: 'users#new'
  get     '/login',     to:'sessions#new'
  post    '/login',     to:'sessions#create'
  delete  '/logout',    to:'sessions#destroy'

  resources :study_sessions, only:[:index,:new,:create,:show]
  resources :groups, only: [:index,:new,:create]
  resources :users
end
