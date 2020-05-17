Rails.application.routes.draw do

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get    "restaurants",          to: "restaurants#index"

  get    "restaurants/new",      to: "restaurants#new",  as: :new_restaurant
  post   "restaurants",          to: "restaurants#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "restaurants/:id",      to: "restaurants#show", as: :restaurant

  get    "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch  "restaurants/:id",      to: "restaurants#update"

  delete "restaurants/:id",      to: "restaurants#destroy"
end
