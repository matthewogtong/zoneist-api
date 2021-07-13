Rails.application.routes.draw do

  # AUTH
  post "/register" => "auth#register"
  post "/login" => "auth#login"

  # USER ROUTES
  get "/users" => "users#index"

  get "/home" => "users#home"

  get "/users/:id" => "users#show"

  get "/users/:id/tags" => "users#tags"
  post "/users/:id/tags" => "users#add_tag"
  delete "/users/:id/tags/:tag_id" => "users#delete_tag"

  get "/users/:id/zones" => "users#zones"
  post "/users/:id/zones" => "users#add_zone"
  get "/users/:id/zones/:zone_id" => "users#zone"
  patch "/users/:id/zones/:zone_id" => "users#complete_zone"

  get "/users/:id/regions" => "users#regions"
  post "/users/:id/regions" => "users#purchase_region"

  get "/users/:id/trinkets" => "users#trinkets"
  post "/users/:id/trinkets" => "users#purchase_trinket"

  # TRINKET ROUTES
  get "/trinkets" => "trinkets#index"

  # REGION ROUTES
  get "/regions" => "regions#index"

end
