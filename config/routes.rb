Rails.application.routes.draw do
  root "welcome#index"

  get "/dashboard", :to => "users#index"

  get "/rsvp", :to => "guests#new"
end
