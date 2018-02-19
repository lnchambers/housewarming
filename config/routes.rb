Rails.application.routes.draw do
  root "welcome#index"

  get "/dashboard", :to => "users#index"

  get "/rsvp", :to => "guests#new"

  post "/guests", :to => "guests#create"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"
end
