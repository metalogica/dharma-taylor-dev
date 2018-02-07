Rails.application.routes.draw do
  root to:'pages#home'

  get 'information', to: 'pages#information'

  resources :projects, only: [:index, :show]

end
