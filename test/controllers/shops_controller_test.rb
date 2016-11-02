require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get shops_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_url
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post shops_url, params: { shop: { address: @shop.address, alt_contact_no: @shop.alt_contact_no, contact_no: @shop.contact_no, email: @shop.email, hair_dresser_id: @shop.hair_dresser_id, image_url: @shop.image_url, logo_url: @shop.logo_url, main_branch: @shop.main_branch, name: @shop.name, status: @shop.status, theme: @shop.theme, website: @shop.website } }
    end

    assert_redirected_to shop_url(Shop.last)
  end

  test "should show shop" do
    get shop_url(@shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_url(@shop)
    assert_response :success
  end

  test "should update shop" do
    patch shop_url(@shop), params: { shop: { address: @shop.address, alt_contact_no: @shop.alt_contact_no, contact_no: @shop.contact_no, email: @shop.email, hair_dresser_id: @shop.hair_dresser_id, image_url: @shop.image_url, logo_url: @shop.logo_url, main_branch: @shop.main_branch, name: @shop.name, status: @shop.status, theme: @shop.theme, website: @shop.website } }
    assert_redirected_to shop_url(@shop)
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete shop_url(@shop)
    end

    assert_redirected_to shops_url
  end
end
