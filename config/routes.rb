Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts do
    collection do
      post :confirm
    end
  end
  resources :tops
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
