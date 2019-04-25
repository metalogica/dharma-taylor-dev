Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}

  root to:'projects#index'

  get 'information', to: 'pages#information'
  get 'featured', to: 'projects#show'

  resource :archive, only: [:show]
  resources :projects, only: [:index, :show], path: "featured"

end
