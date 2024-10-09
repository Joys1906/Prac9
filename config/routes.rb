Rails.application.routes.draw do
  # Rutas para las páginas estáticas
  get "static_pages/home"
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # Comprobación de estado
  get "up" => "rails/health#show", as: :rails_health_check

  # Archivos PWA
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Define la ruta raíz
  root 'static_pages#home'
end
