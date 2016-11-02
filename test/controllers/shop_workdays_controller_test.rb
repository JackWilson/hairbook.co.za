require 'test_helper'

class ShopWorkdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_workday = shop_workdays(:one)
  end

  test "should get index" do
    get shop_workdays_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_workday_url
    assert_response :success
  end

  test "should create shop_workday" do
    assert_difference('ShopWorkday.count') do
      post shop_workdays_url, params: { shop_workday: { close_time: @shop_workday.close_time, day: @shop_workday.day, open: @shop_workday.open, shop_id: @shop_workday.shop_id, start_time: @shop_workday.start_time } }
    end

    assert_redirected_to shop_workday_url(ShopWorkday.last)
  end

  test "should show shop_workday" do
    get shop_workday_url(@shop_workday)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_workday_url(@shop_workday)
    assert_response :success
  end

  test "should update shop_workday" do
    patch shop_workday_url(@shop_workday), params: { shop_workday: { close_time: @shop_workday.close_time, day: @shop_workday.day, open: @shop_workday.open, shop_id: @shop_workday.shop_id, start_time: @shop_workday.start_time } }
    assert_redirected_to shop_workday_url(@shop_workday)
  end

  test "should destroy shop_workday" do
    assert_difference('ShopWorkday.count', -1) do
      delete shop_workday_url(@shop_workday)
    end

    assert_redirected_to shop_workdays_url
  end
end
