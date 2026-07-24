Rails.application.routes.draw do
  resources :diaries, only: [ :index ]
  resource :session
  resources :passwords, param: :token
  resources :users, only: %i[new create]
  root "pages#home"
end
