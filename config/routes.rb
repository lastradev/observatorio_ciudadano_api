Rails.application.routes.draw do
  root "home#index"
  resources :crimes, only: %i[index]
  namespace :crimes do
    get :download
    get :count
  end
end
