Rails.application.routes.draw do


  devise_for :users
  root 'pages#index'
  get 'pages/show'

  get 'pages/index'

  get 'pages/show'

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" =>"users#logout"

  # get "users/index" => "users#index"
  # get "signup" => "users#new"
  # # get "users/:id" => "users#show"
  # post "signup" => "users#create"
  # # get "users/:id/edit" => "users#edit"
  # # post "users/:id/update" => "users#update"
  # resources :users

  resources :users, :only => [:index, :show]

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"

  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"


  get "/" => "home#top"
  get "about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
