Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'dashboard#analytics', as: :authenticated_root
  end

  root to: 'patients#index'

  resources :patients do
    resources :appointments
  end

  resources :doctors
end