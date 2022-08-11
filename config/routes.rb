Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/bookings" => "bookings#index"
  get "/bookings/:id" => "bookings#show"
  post "/bookings" => "bookings#create"

  post "/users" => "users#create"
end
