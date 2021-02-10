Rails.application.routes.draw do
  # resources :zones
  # resources :userregions
  # resources :usertrinkets
  # resources :regions
  # resources :trinkets
  # resources :tags
  # resources :users

  # AUTH
  post "/register" => "auth#register"
  post "/login" => "auth#login"
  post "/register" => "auth#register"


  # USER ROUTES
  get "/users" => "users#index"

  get "/home" => "users#home"

  get "/users/:id" => "users#show"


  get "/users/:id/tags" => "users#tags"

  get "/users/:id/zones" => "users#zones"

  get "/users/:id/regions" => "users#regions"
  post "/users/:id/regions" => "users#purchase_region"

  get "/users/:id/trinkets" => "users#trinkets"
  post "/users/:id/trinkets" => "users#purchase_trinket"

  # USERTRINKET ROUTES

  # TRINKET ROUTES
  get "/trinkets" => "trinkets#index"

  # USERREGION ROUTES

  # REGION ROUTES
  get "/regions" => "regions#index"

  # TAG ROUTES

  # ZONE ROUTES


end
