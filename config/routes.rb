Rails.application.routes.draw do
  devise_for :employees, controllers: {
      sessions: 'employees/sessions',
      registrations: 'employees/registrations'
      }
  resources :orders
  resources :clients
  resources :categories
  resources :products
  resources :payments
  resources :zones
  get 'pages/home'

  get 'pages/status'

  get 'pages/livemap'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
