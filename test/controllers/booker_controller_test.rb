require 'test_helper'

class BookerControllerTest < ActionDispatch::IntegrationTest
  test "should get day" do
    get booker_day_url
    assert_response :success
  end

  test "should get week" do
    get booker_week_url
    assert_response :success
  end

end
