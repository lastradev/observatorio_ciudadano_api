# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  defaults format: :json do
    resources :crimes, only: %i[index]
    namespace :crimes do
      get :download
      get :robberies
    end
  end
end
