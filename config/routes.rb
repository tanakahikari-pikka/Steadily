Rails.application.routes.draw do
  resources :logs
  get 'top/home'
  root 'top#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
