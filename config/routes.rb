Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :attractions, only: [:new, :create, :show, :index]
  get "/", to: "application#home", as: "root"

  get "/signin", to: "sessions#new"
 post "/sessions/create", to: "sessions#create"
 delete "/signout", to: "sessions#destroy"
end
