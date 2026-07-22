Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :users, only: %i[new create]
  root "pages#home"
end
