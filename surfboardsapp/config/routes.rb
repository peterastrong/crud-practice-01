#CRUD

Rails.application.routes.draw do

  root to: "surfboards#index"

  get "/surfboards", to: "surfboards#index"
  get "/surfboards/new", to: "surfboards#new"
  post "/surfboards", to: "surfboards#create"
  get "/surfboards/:id", to: "surfboards#show"
  get "/surfboards/:id/edit", to: "surfboards#edit"
  patch "/surfboards/:id", to: "surfboards#update"
  delete "/surfboards/:id", to: "surfboards#destroy"
 
end
