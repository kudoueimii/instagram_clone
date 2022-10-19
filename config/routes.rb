Rails.application.routes.draw do
  get 'sessions/new'
  resources :contacts
  resources :favorites, only: [:create, :destroy, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :posts do
    collection do
      post :confirm
    end
  end 
  root 'sessions#new'
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end