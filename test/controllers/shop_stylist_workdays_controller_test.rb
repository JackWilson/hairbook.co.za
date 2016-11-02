require 'test_helper'

class ShopStylistWorkdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_stylist_workday = shop_stylist_workdays(:one)
  end

  test "should get index" do
    get shop_stylist_workdays_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_stylist_workday_url
    assert_response :success
  end

  test "should create shop_stylist_workday" do
    assert_difference('ShopStylistWorkday.count') do
      post shop_stylist_workdays_url, params: { shop_stylist_workday: { day: @shop_stylist_workday.day, effective_date: @shop_stylist_workday.effective_date, end_date: @shop_stylist_workday.end_date, end_time: @shop_stylist_workday.end_time, shop_id: @shop_stylist_workday.shop_id, start_time: @shop_stylist_workday.start_time, stylist_id: @shop_stylist_workday.stylist_id, working: @shop_stylist_workday.working } }
    end

    assert_redirected_to shop_stylist_workday_url(ShopStylistWorkday.last)
  end

  test "should show shop_stylist_workday" do
    get shop_stylist_workday_url(@shop_stylist_workday)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_stylist_workday_url(@shop_stylist_workday)
    assert_response :success
  end

  test "should update shop_stylist_workday" do
    patch shop_stylist_workday_url(@shop_stylist_workday), params: { shop_stylist_workday: { day: @shop_stylist_workday.day, effective_date: @shop_stylist_workday.effective_date, end_date: @shop_stylist_workday.end_date, end_time: @shop_stylist_workday.end_time, shop_id: @shop_stylist_workday.shop_id, start_time: @shop_stylist_workday.start_time, stylist_id: @shop_stylist_workday.stylist_id, working: @shop_stylist_workday.working } }
    assert_redirected_to shop_stylist_workday_url(@shop_stylist_workday)
  end

  test "should destroy shop_stylist_workday" do
    assert_difference('ShopStylistWorkday.count', -1) do
      delete shop_stylist_workday_url(@shop_stylist_workday)
    end

    assert_redirected_to shop_stylist_workdays_url
  end
end
