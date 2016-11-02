require 'test_helper'

class ShopCalendarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_calendar = shop_calendars(:one)
  end

  test "should get index" do
    get shop_calendars_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_calendar_url
    assert_response :success
  end

  test "should create shop_calendar" do
    assert_difference('ShopCalendar.count') do
      post shop_calendars_url, params: { shop_calendar: { available: @shop_calendar.available, duration: @shop_calendar.duration, shop_id: @shop_calendar.shop_id, slot_end: @shop_calendar.slot_end, slot_start: @shop_calendar.slot_start, stylist_id: @shop_calendar.stylist_id } }
    end

    assert_redirected_to shop_calendar_url(ShopCalendar.last)
  end

  test "should show shop_calendar" do
    get shop_calendar_url(@shop_calendar)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_calendar_url(@shop_calendar)
    assert_response :success
  end

  test "should update shop_calendar" do
    patch shop_calendar_url(@shop_calendar), params: { shop_calendar: { available: @shop_calendar.available, duration: @shop_calendar.duration, shop_id: @shop_calendar.shop_id, slot_end: @shop_calendar.slot_end, slot_start: @shop_calendar.slot_start, stylist_id: @shop_calendar.stylist_id } }
    assert_redirected_to shop_calendar_url(@shop_calendar)
  end

  test "should destroy shop_calendar" do
    assert_difference('ShopCalendar.count', -1) do
      delete shop_calendar_url(@shop_calendar)
    end

    assert_redirected_to shop_calendars_url
  end
end
