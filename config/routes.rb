Rails.application.routes.draw do
  root to:'projects#index'

  # Projects controller
  # resources :projects, only: [:index, :edit, :update, :destroy], path: "featured"
  # Redirects sign-in user to admin panel for projects objects
  resources :projects, only: [:index, :show, :edit, :destroy, :new, :create], path: "featured"
  get '/admin', to: 'projects#admin_projects_index', as: 'admin_projects_index'
  get 'featured/archiver/:id', to: 'projects#archiver', as: 'archiver'

  # Devise routes for user authentication
  devise_for :users, controllers: { registrations: "registrations" }

  # Archives Controller
  # resources :archives, only: [:index, :show, :edit, :update, :destroy]
  # get '/archives', to: 'archives#index'
  get 'archives_list', to: 'archives#archives_list'
  get 'archives/unarchiver/:id', to: 'archives#unarchiver', as: 'unarchiver'
  resources :archives, only: [:index, :edit, :update, :destroy]

  # Pages (information) controller
  resources :biography, only: [:index, :edit, :update], path: "information"

  # Footer Content Controller
  resource :footer, only: [:edit, :update]
end
