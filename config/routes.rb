Rails.application.routes.draw do
  root to:'projects#index'

  # Projects controller
  resource :projects, path: "featured"
  get 'admin', to: 'registrations#log_in'

  # Devise routes for user authentication
  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }

  # Archives Controller
  resource :archive, only: [:index, :show, :edit, :update, :destroy]

  # Pages (information) controller
  resource :pages, only: [:index, :show, :edit, :update], path: "information"
  get '/information', to: 'pages#information', as: "information"

  # Footer Content Controller
  resource :footer, only: [:show, :edit, :update]
end
