# frozen_string_literal: true

require 'test_helper'

class CrimesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get crimes_url, as: :json
    assert_response :success
  end

  test 'should return crimes CSV file' do
    get crimes_download_url
    assert_response :success
    assert_equal 'text/csv', response.content_type
  end

  test 'should get robberies' do
    get crimes_robberies_url, as: :json
    assert_response :success
  end
end
