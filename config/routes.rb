Rails.application.routes.draw do

  resources :personnalities do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  devise_for :users
  # root to: "personnalities#index"
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
