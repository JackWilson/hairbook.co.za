require 'test_helper'

class ShopSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_setting = shop_settings(:one)
  end

  test "should get index" do
    get shop_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_setting_url
    assert_response :success
  end

  test "should create shop_setting" do
    assert_difference('ShopSetting.count') do
      post shop_settings_url, params: { shop_setting: { calender_slot_size: @shop_setting.calender_slot_size, days_ahead_calender: @shop_setting.days_ahead_calender, shop_id: @shop_setting.shop_id, start_date: @shop_setting.start_date } }
    end

    assert_redirected_to shop_setting_url(ShopSetting.last)
  end

  test "should show shop_setting" do
    get shop_setting_url(@shop_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_setting_url(@shop_setting)
    assert_response :success
  end

  test "should update shop_setting" do
    patch shop_setting_url(@shop_setting), params: { shop_setting: { calender_slot_size: @shop_setting.calender_slot_size, days_ahead_calender: @shop_setting.days_ahead_calender, shop_id: @shop_setting.shop_id, start_date: @shop_setting.start_date } }
    assert_redirected_to shop_setting_url(@shop_setting)
  end

  test "should destroy shop_setting" do
    assert_difference('ShopSetting.count', -1) do
      delete shop_setting_url(@shop_setting)
    end

    assert_redirected_to shop_settings_url
  end
end
