require 'test_helper'

class CrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crime = crimes(:one)
  end

  test 'should get index' do
    get crimes_url, as: :json
    assert_response :success
  end

  test 'should create crime' do
    assert_difference('Crime.count') do
      post crimes_url,
           params: { crime: { affected_legal_asset: @crime.affected_legal_asset, april_count: @crime.april_count, august_count: @crime.august_count, city: @crime.city, city_id: @crime.city_id, crime_subtype: @crime.crime_subtype, crime_type: @crime.crime_type, december_count: @crime.december_count, february_count: @crime.february_count, january_count: @crime.january_count, july_count: @crime.july_count, june_count: @crime.june_count, march_count: @crime.march_count, may_count: @crime.may_count, modality: @crime.modality, november_count: @crime.november_count, october_count: @crime.october_count, september_count: @crime.september_count, state: @crime.state, state_id: @crime.state_id, year: @crime.year } }, as: :json
    end

    assert_response :created
  end

  test 'should show crime' do
    get crime_url(@crime), as: :json
    assert_response :success
  end

  test 'should update crime' do
    patch crime_url(@crime),
          params: { crime: { affected_legal_asset: @crime.affected_legal_asset, april_count: @crime.april_count, august_count: @crime.august_count, city: @crime.city, city_id: @crime.city_id, crime_subtype: @crime.crime_subtype, crime_type: @crime.crime_type, december_count: @crime.december_count, february_count: @crime.february_count, january_count: @crime.january_count, july_count: @crime.july_count, june_count: @crime.june_count, march_count: @crime.march_count, may_count: @crime.may_count, modality: @crime.modality, november_count: @crime.november_count, october_count: @crime.october_count, september_count: @crime.september_count, state: @crime.state, state_id: @crime.state_id, year: @crime.year } }, as: :json
    assert_response :success
  end

  test 'should destroy crime' do
    assert_difference('Crime.count', -1) do
      delete crime_url(@crime), as: :json
    end

    assert_response :no_content
  end
end
