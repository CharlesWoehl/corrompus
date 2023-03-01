Rails.application.routes.draw do

  resources :personnalities do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings
  devise_for :users
  # root to: "personnalities#index"
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
