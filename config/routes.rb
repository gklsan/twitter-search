Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "search#index"

  get "/search_in_twitter", to: "search#search_in_twitter"
  post "/search_in_twitter", to: "search#search_in_twitter"

end
