Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :crimes, only: %i[index]
  namespace :crimes do
    get :download
    get :count
  end
end
