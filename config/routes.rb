Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get "home" => 'static_pages#home'
  get "help" => 'static_pages#help'
  get "about" =>  'static_pages#about'

  get "signup" => "users#new"
  post "signup" => "users#create"

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "activities" => "static_pages#home"

  root "static_pages#home"

  resources :users
  resources :activities,          only: [:create, :destroy, :edit, :update, :show]
end
