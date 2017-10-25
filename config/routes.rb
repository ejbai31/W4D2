Rails.application.routes.draw do
  # get 'cat_rental_requests/new'

  # get 'cat_rental_requests/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cats
  resources :cat_rental_requests, only: [:new, :create]
end
