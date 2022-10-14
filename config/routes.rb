Rails.application.routes.draw do
  get 'sessions/new'
  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :posts do
    collection do
      post :confirm
    end
  end 
  root 'sessions#new'   
end