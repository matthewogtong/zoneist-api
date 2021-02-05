Rails.application.routes.draw do
  # resources :zones
  # resources :userregions
  # resources :usertrinkets
  # resources :regions
  # resources :trinkets
  # resources :tags
  # resources :users

  # USER ROUTES
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  get "/users/:id/tags" => "users#tags"
  get "/users/:id/trinkets" => "users#trinkets"
  get "/users/:id/zones" => "users#zones"

  # USERTRINKET ROUTES

  # TRINKET ROUTES
  get "/trinkets" => "trinkets#index"

  # USERREGION ROUTES

  # REGION ROUTES

  # TAG ROUTES

  # ZONE ROUTES


end
