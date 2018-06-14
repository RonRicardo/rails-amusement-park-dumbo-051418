Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  get "/", to: "application#home", as: "root"
end
