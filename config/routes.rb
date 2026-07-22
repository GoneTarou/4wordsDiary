Rails.application.routes.draw do
  get "users/new"
  resource :session
  resources :passwords, param: :token
  resources :users, only: %i[new create]
  root "pages#home"
end
