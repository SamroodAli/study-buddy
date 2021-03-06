Rails.application.routes.draw do

  get 'notes/show'
  get 'notes/index'
  get 'notes/new'
  root 'users#show'
  
  get     '/signup',    to: 'users#new'
  get     '/login',     to:'sessions#new'
  post    '/login',     to:'sessions#create'
  delete  '/logout',    to:'sessions#destroy'
  
  resources :study_sessions, only:[:index,:new,:create,:show,:update] do
    get :external, on: :collection
  end
  resources :collections, only: [:index,:new,:create,:show] do
    get :all , on: :collection
    get :new_session,:sessions, on: :member
  end
  resources :users
  resources :notes
end
