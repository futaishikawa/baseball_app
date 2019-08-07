Rails.application.routes.draw do


  devise_for :users
  root 'pages#index'
  get 'pages/show'
  get 'pages/index'
  get 'pages/show'

  resources :users, :only => [:index, :show]
  resources :posts

  get "/" => "home#top"
  get "about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
