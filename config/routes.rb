Rails.application.routes.draw do
  get 'users/new'

  # get "home" => 'static_pages#home'
  #
  # get "help" => 'static_pages#help'

  get "home" => 'static_pages#home'
  get "help" => 'static_pages#help'
  get "about" =>  'static_pages#about'
  get "signup" => "users#new"

  root "static_pages#home"
end