require 'test_helper'

class DayBookControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get day_book_Index_url
    assert_response :success
  end

end
