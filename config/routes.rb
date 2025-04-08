Rails.application.routes.draw do
  get "pages/about"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :posts

  get 'about', to: 'pages#about'

  root 'posts#index'
end
