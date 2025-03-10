# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: redirect('tracks')

  get 'tracks', to: 'tracks#index', as: 'tracks'
  get 'tracks/:id/edit', to: 'tracks#edit', as: 'edit_track'
  get 'tracks/new', to: 'tracks#new', as: 'new_track'
  post 'tracks', to: 'tracks#create'
  patch 'tracks/:id', to: 'tracks#update'
  delete 'tracks/:id', to: 'tracks#destroy'
  get 'tracks/:id', to: 'tracks#show', as: 'track'
end
