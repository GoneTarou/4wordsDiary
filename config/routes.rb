Rails.application.routes.draw do
  resources :users, only: [ :new, :create ]
  resource :session

  namespace :user do
    resource :profile, only: :show
    resources :diaries, only: [:index, :new, :create, :destroy]
  end

  resources :diaries, only: [ :index, :show ]
  root "pages#home"
end
