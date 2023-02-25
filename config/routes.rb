Rails.application.routes.draw do
  
  resources :users
  resources :logs
  resources :exercises, only: [:index, :show]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  #get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }


  #logging in
  post "/login", to "sessions#create"

  #staying logged in
  get "/me", to: "users#show"

  #logging out:
  delete "/logout", to: "sessions#destroy"
 
end
