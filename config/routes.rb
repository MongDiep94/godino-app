Rails.application.routes.draw do
  devise_for :users
  resources :dinosaurs do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get "dashboard", to: 'pages#dashboard'
  patch 'bookings/:id/accept', to: 'bookings#accept', as: :acceptbooking
  patch 'bookings/:id/deny', to: 'bookings#deny', as: :denybooking
end
