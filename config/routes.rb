Rails.application.routes.draw do
  root 'home#index'
  get "/articles", to: "articles#index"
  get "/about", to: "articles#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end