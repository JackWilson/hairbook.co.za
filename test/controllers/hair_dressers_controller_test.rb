require 'test_helper'

class HairDressersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hair_dresser = hair_dressers(:one)
  end

  test "should get index" do
    get hair_dressers_url
    assert_response :success
  end

  test "should get new" do
    get new_hair_dresser_url
    assert_response :success
  end

  test "should create hair_dresser" do
    assert_difference('HairDresser.count') do
      post hair_dressers_url, params: { hair_dresser: { logo_url: @hair_dresser.logo_url, name: @hair_dresser.name, status: @hair_dresser.status } }
    end

    assert_redirected_to hair_dresser_url(HairDresser.last)
  end

  test "should show hair_dresser" do
    get hair_dresser_url(@hair_dresser)
    assert_response :success
  end

  test "should get edit" do
    get edit_hair_dresser_url(@hair_dresser)
    assert_response :success
  end

  test "should update hair_dresser" do
    patch hair_dresser_url(@hair_dresser), params: { hair_dresser: { logo_url: @hair_dresser.logo_url, name: @hair_dresser.name, status: @hair_dresser.status } }
    assert_redirected_to hair_dresser_url(@hair_dresser)
  end

  test "should destroy hair_dresser" do
    assert_difference('HairDresser.count', -1) do
      delete hair_dresser_url(@hair_dresser)
    end

    assert_redirected_to hair_dressers_url
  end
end
