Rails.application.routes.draw do
  root to:'projects#index'

  # Devise routes
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  # Admin control panel routes
  get '/admin', to: 'dashboard#featured', as: "dashboard_featured"
  get '/dashboard/information', to: 'dashboard#information', as: "dashboard_information"
  get '/dashboard/archive', to: 'dashboard#archive', as: "dashboard_archive"
  get '/dashboard/footer', to: 'dashboard#footer', as: "dashboard_footer"

  get 'information', to: 'pages#information'
  resource :archive, only: [:show]
  resources :projects, only: [:index, :show], path: "featured"
end
