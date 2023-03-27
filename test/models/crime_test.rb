require 'test_helper'

class CrimeTest < ActiveSupport::TestCase
  test 'should count total crimes in a year' do
    count = Crime.where(year: 2020).year_count
    assert_equal 24, count
  end
end
