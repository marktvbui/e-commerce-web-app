Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get "/products", to:"products#index"

get "/products/new", to:"products#new"
post "/products", to:"products#create"


get "/products/:id/edit", to:"products#edit"
patch "/products/:id", to:"products#update"

get "/products/:id", to: "products#show"

get "/contact", to: "products#contact"

delete "/products/:id", to:"products#destroy"

get "/products/supplier", to:"products#supplier"

post "/search", to: "products#search"

get "/products/:id/image/new", to:"images#new"
post "/products/:id/image", to:"images#create"

get "/signup", to: "users#new"
post "/users", to: "users#create"

get "/login", to: "sessions#new"
post "/login", to: "sessions#create"
get "/logout", to: "sessions#destroy"

get "/carted_products/delete/:id", to: 'carted_products#destroy'
post "/carted_products", to: "carted_products#create"
get "/carted_products", to: "carted_products#index"

get "/orders/:id", to: "orders#show"
post "/orders", to: "orders#create"

# get "/checkout", to: "carted_products#index"
patch "/carted_products", to: "carted_products#update"

end

