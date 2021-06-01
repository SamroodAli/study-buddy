Rails.application.routes.draw do

  get 'sessions/new'
  root 'users#show'

  get     '/signup',    to: 'users#new'
  get     '/login',     to:'sessions#new'
  post    '/login',     to:'sessions#create'
  delete  '/logout',    to:'sessions#destroy'

  resources :study_sessions, only:[:index,:new,:create,:show] do
    get :external, on: :collection
  end
  resources :collections, only: [:index,:new,:create,:show] do
    get :all , on: :collection
    get :new_session, on: :member
  end
  resources :users
end
