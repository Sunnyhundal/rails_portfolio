Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  root "articles#index"

  get "/articles", to: "articles#index"

  get 'contacts/new', to: 'contacts#new'
  post 'contacts/create', to: 'contacts#create'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
