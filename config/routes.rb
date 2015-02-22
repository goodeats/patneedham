Rails.application.routes.draw do

  root 'home#index'

  resources :about, only: [:index]
  resources :work, only: [:index]
  resources :blog, only: [:index]

end
