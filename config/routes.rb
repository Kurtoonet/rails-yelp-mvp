Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  get "restaurants/:id/edit", to: "restaurants#edit"
  patch "restaurants/:id", to: "restaurants#update"
  delete "restaurants/:id", to: "restaurants#destroy"

  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  post "restaurants/:restaurant_id/reviews", to: "reviews#create"


# Restaurant.new(params)

#   /restaurants/12/reviews/24

#   params = {
#     restaurant_id: 12
#     id: 24
#   }

  # get "restaurants/:restaurant_id/reviews",     to: "reviews#index"
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews",    to: "reviews#create"
  # get "reviews/:id",                            to: "reviews#show"
  # get "reviews/:id/edit",                       to: "reviews#edit"
  # patch "reviews/:id",                          to: "reviews#update"
  # delete "reviews/:id",                         to: "reviews#destroy"
end
