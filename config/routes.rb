# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: %i[index create destroy]
  resources :authentications, only: %i[create destroy]
  resources :sessions, only: %i[create destroy]
  get '/profile', to: 'profiles#show'
  resources :profiles, only: %i[create show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
