Rails.application.routes.draw do
  get 'registrations/new'

  root 'home#index'
  get 'home', to: 'home#index'

  resources :posts

  resources :users

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
