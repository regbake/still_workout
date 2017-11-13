Rails.application.routes.draw do
  # get "home" => 'static_pages#home'
  #
  # get "help" => 'static_pages#help'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  root "static_pages#home"
end
