Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  root 'pages#index'
  get 'pages/show'
  get 'pages/index'
  get 'pages/show'

  resources :users, :only => [:index, :show]
  resources :posts do
    resources :comments, only: [:create,:destroy], shallow: true
  end

  get "/" => "home#top"
  get "about" => "home#about"
end
