Rails.application.routes.draw do
  root to:'projects#index'

  # Projects controller
  # resources :projects, only: [:index, :edit, :update, :destroy], path: "featured"
  # Redirects sign-in user to admin panel for projects objects
  resources :projects, only: [:index, :show], path: "featured"
  get '/admin', to: 'projects#admin_projects_index', as: 'admin_projects_index'

  # Devise routes for user authentication
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  # Archives Controller
  # resources :archives, only: [:index, :show, :edit, :update, :destroy]
  # get '/archives', to: 'archives#index'
  get 'archives_list', to: 'archives#archives_list'
  resources :archives, only: [:index, :edit, :update, :destroy]

  # Pages (information) controller
  resources :pages, only: [:index, :show, :edit, :update], path: "information"

  # Footer Content Controller
  resource :footer, only: [:edit, :update]
end
