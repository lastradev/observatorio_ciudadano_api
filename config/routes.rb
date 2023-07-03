# frozen_string_literal: true

Rails.application.routes.draw do
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  get 'support_requests/index'
  get 'support_requests/update'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/swagger'
  defaults format: :json do
    resources :crimes, only: %i[index]
    namespace :crimes do
      get :download
      get :robberies
    end
  end
end
