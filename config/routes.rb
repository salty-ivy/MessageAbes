Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "chatroom#home"
  get "about/", to:"chatroom#about"

  get "signup/", to:"users#new"
  post "signup/", to:"users#create"

  get "login/", to:"sessions#new"
  post "login/", to:"sessions#create"
  get "logout/", to:"sessions#destroy"

  resources :users, only: [:index, :show, :edit, :update, :destroy]

  post "message/", to:"messages#create"
  # get "test/", to:"users#test"

end
