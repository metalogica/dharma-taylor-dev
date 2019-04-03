Rails.application.routes.draw do
  devise_for :users
  root to:'projects#index'

  get 'information', to: 'pages#information'

  resource :archive, only: [:show]
  resources :projects, only: [:index, :show], path: "featured"

end
