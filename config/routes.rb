Rails.application.routes.draw do

  get 'sessions/new'
  root 'users#show'

  get     '/signup',    to: 'users#new'
  get     '/login',     to:'sessions#new'
  post    '/login',     to:'sessions#create'
  delete  '/logout',    to:'sessions#destroy'
  get '/external',      to:'collections#external'

  resources :study_sessions, only:[:index,:new,:create,:show],member: {external: :get}
  resources :collections, only: [:index,:new,:create,:show]
  resources :users
end
