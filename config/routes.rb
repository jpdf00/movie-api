Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :favourites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "movies#index"
  get "/users", to: "users#index", :as => :user_index
end
