Rails.application.routes.draw do
  get 'logs/index'
  get 'logs/new'
  get 'logs/show'
  get 'top/home'
  root 'top#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
