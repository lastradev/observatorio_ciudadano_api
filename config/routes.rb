# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root to: redirect('/api-docs')
  defaults format: :json do
    resources :crimes, only: %i[index]
    namespace :crimes do
      get :download
      get :robberies
    end
  end
end
