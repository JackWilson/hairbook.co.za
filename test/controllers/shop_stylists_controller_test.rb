require 'test_helper'

class ShopStylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_stylist = shop_stylists(:one)
  end

  test "should get index" do
    get shop_stylists_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_stylist_url
    assert_response :success
  end

  test "should create shop_stylist" do
    assert_difference('ShopStylist.count') do
      post shop_stylists_url, params: { shop_stylist: { end_date: @shop_stylist.end_date, shop_id: @shop_stylist.shop_id, start_date: @shop_stylist.start_date, status: @shop_stylist.status, stylist_id: @shop_stylist.stylist_id } }
    end

    assert_redirected_to shop_stylist_url(ShopStylist.last)
  end

  test "should show shop_stylist" do
    get shop_stylist_url(@shop_stylist)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_stylist_url(@shop_stylist)
    assert_response :success
  end

  test "should update shop_stylist" do
    patch shop_stylist_url(@shop_stylist), params: { shop_stylist: { end_date: @shop_stylist.end_date, shop_id: @shop_stylist.shop_id, start_date: @shop_stylist.start_date, status: @shop_stylist.status, stylist_id: @shop_stylist.stylist_id } }
    assert_redirected_to shop_stylist_url(@shop_stylist)
  end

  test "should destroy shop_stylist" do
    assert_difference('ShopStylist.count', -1) do
      delete shop_stylist_url(@shop_stylist)
    end

    assert_redirected_to shop_stylists_url
  end
end
