Rails.application.routes.draw do
  resources :pets
  resources :owners
  resources :veterinarians
  root to: 'veterinarians#index'
end
