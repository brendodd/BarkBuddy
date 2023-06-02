Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :dogs, only: [:show, :index, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index] do
    resources :reviews, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
