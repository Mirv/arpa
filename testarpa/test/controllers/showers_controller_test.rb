require 'test_helper'

class ShowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shower = showers(:one)
  end

  test "should get index" do
    get showers_url
    assert_response :success
  end

  test "should get new" do
    get new_shower_url
    assert_response :success
  end

  test "should create shower" do
    assert_difference('Shower.count') do
      post showers_url, params: { shower: { welcomer: @shower.welcomer } }
    end

    assert_redirected_to shower_url(Shower.last)
  end

  test "should show shower" do
    get shower_url(@shower)
    assert_response :success
  end

  test "should get edit" do
    get edit_shower_url(@shower)
    assert_response :success
  end

  test "should update shower" do
    patch shower_url(@shower), params: { shower: { welcomer: @shower.welcomer } }
    assert_redirected_to shower_url(@shower)
  end

  test "should destroy shower" do
    assert_difference('Shower.count', -1) do
      delete shower_url(@shower)
    end

    assert_redirected_to showers_url
  end
end
