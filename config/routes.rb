Rails.application.routes.draw do
  root 'taxes#index'
  resources :taxes,            only: [:new, :create]
  resources :living_costs,     only: [:new, :create]
  resources :moves,            only: [:new, :create]
  resources :utility_costs,    only: [:new, :create]
  resources :car_costs,        only: [:new, :create]
  resources :monthly_payments, only: [:new, :create]
  resources :tuitions,         only: [:new, :create]
end