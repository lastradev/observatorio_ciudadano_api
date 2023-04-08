# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'crimes', type: :request do
  path '/crimes' do
    get('List crimes') do
      produces 'application/json'

      parameter name: :page, in: :query, type: :integer, required: false
      parameter name: :year, in: :query, type: :string, required: false
      parameter name: :city, in: :query, type: :string, required: false
      parameter name: :affected_legal_asset, in: :query, type: :string, required: false
      parameter name: :crime_type, in: :query, type: :string, required: false
      parameter name: :crime_subtype, in: :query, type: :string, required: false
      parameter name: :modality, in: :query, type: :string, required: false

      response(200, 'successful') do
        schema type: :object,
               properties: {
                 pagination: {
                   type: :object,
                   properties: {
                     page: { type: :integer },
                     total: { type: :integer },
                     next_page: { type: :string }
                   }
                 },
                 crime_count: { type: :integer },
                 content: {
                   type: :array,
                   items: {
                     type: :object,
                     properties: {
                       year: { type: :integer },
                       state: { type: :string },
                       city: { type: :string },
                       affected_legal_asset: { type: :string },
                       crime_type: { type: :string },
                       crime_subtype: { type: :string },
                       modality: { type: :string },
                       january_count: { type: :integer },
                       february_count: { type: :integer },
                       march_count: { type: :integer },
                       april_count: { type: :integer },
                       may_count: { type: :integer },
                       june_count: { type: :integer },
                       july_count: { type: :integer },
                       august_count: { type: :integer },
                       september_count: { type: :integer },
                       october_count: { type: :integer },
                       november_count: { type: :integer },
                       december_count: { type: :integer }
                     }
                   }
                 }
               }
        run_test!
      end
    end
  end

  path '/crimes/download' do
    get('Download crimes CSV') do
      response(200, 'successful') do
        run_test!
      end
    end
  end

  path '/crimes/robberies' do
    get('List robberies') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
