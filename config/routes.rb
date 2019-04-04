Rails.application.routes.draw do
  root to:'projects#index'

  # Projects controller
  resources :projects, path: "featured"
  # Redirects sign-in user to admin panel for projects objects
  get '/admin', to: 'projects#admin_projects_index', as: 'admin_projects_index'

  # Devise routes for user authentication
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  # Archives Controller
  resources :archives, only: [:index, :show, :edit, :update, :destroy]
  # get '/archives', to: 'archives#index'

  # Pages (information) controller
  resource :pages, only: [:index, :show, :edit, :update], path: "information"
  get '/information/edit', to: 'pages#information', as: "information"

  # Footer Content Controller
  resource :footer, only: [:show, :edit, :update]
end
