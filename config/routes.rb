Rails.application.routes.draw do
  devise_for :users
  root "homes#index"
  resources :homes ,only: %w[index show]

  get "/dairi", to: "homes#dairi"
  resources :skills, only: %w[new create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
