Rails.application.routes.draw do
  root 'costs#index'
  resources :costs, only: [:new, :create]
end