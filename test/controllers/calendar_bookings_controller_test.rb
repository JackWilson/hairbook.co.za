require 'test_helper'

class CalendarBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendar_booking = calendar_bookings(:one)
  end

  test "should get index" do
    get calendar_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_calendar_booking_url
    assert_response :success
  end

  test "should create calendar_booking" do
    assert_difference('CalendarBooking.count') do
      post calendar_bookings_url, params: { calendar_booking: { booking_id: @calendar_booking.booking_id, occupy_chair: @calendar_booking.occupy_chair, shop_calendar_id: @calendar_booking.shop_calendar_id } }
    end

    assert_redirected_to calendar_booking_url(CalendarBooking.last)
  end

  test "should show calendar_booking" do
    get calendar_booking_url(@calendar_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_calendar_booking_url(@calendar_booking)
    assert_response :success
  end

  test "should update calendar_booking" do
    patch calendar_booking_url(@calendar_booking), params: { calendar_booking: { booking_id: @calendar_booking.booking_id, occupy_chair: @calendar_booking.occupy_chair, shop_calendar_id: @calendar_booking.shop_calendar_id } }
    assert_redirected_to calendar_booking_url(@calendar_booking)
  end

  test "should destroy calendar_booking" do
    assert_difference('CalendarBooking.count', -1) do
      delete calendar_booking_url(@calendar_booking)
    end

    assert_redirected_to calendar_bookings_url
  end
end
