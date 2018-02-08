Rails.application.routes.draw do
  root to:'pages#home'

  get 'information', to: 'pages#information'

  resource :archive, only: [:show]
  resources :projects, only: [:index, :show], path: "featured"

end
