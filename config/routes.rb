Rails.application.routes.draw do
  # Devise Admin authentication
  devise_for :admins

  # Health checks
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Root
  root "home#index"

  # About page
  get "/about", to: "home#about"

  # Main resources
  resources :services, only: [ :index, :show ]
  resources :products, only: [ :index, :show ]
  resources :jobs, only: [ :index, :show ]
  resources :applications, only: [ :new, :create ]
  resources :contact_messages, only: [ :new, :create ]

  # Admin Panel Routes
  namespace :admin do
    get "dashboard", to: "dashboard#index"
    resources :services
    resources :products
    resources :jobs
    resources :applications, only: [ :index, :show, :destroy ]
    resources :contact_messages, only: [ :index, :show, :destroy ]
  end
end
