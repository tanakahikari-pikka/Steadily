Rails.application.routes.draw do
  get 'categories/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  resources :categories, except: [:new, :show]
  resources :users
  resources :logs
  get 'top/home'
  root 'top#home'
end
