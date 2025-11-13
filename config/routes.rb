Rails.application.routes.draw do
  # Health checks
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA (default, keep it)
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Root
  root "home#index"

  # About page
  get "/about", to: "home#about"

  # Main resources
  resources :services, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :jobs, only: [:index, :show]
  resources :applications, only: [:new, :create]
  resources :contact_messages, only: [:new, :create]
end
