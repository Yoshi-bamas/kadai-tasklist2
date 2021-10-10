Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  get 'logout', to:'sessions#destroy'
  get 'signup', to:'users#new'
  get 'users',to:'tasks#index'
  resources :users, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end