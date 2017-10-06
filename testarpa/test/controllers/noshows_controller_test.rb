require 'test_helper'

class NoshowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noshow = noshows(:one)
  end

  test "should get index" do
    get noshows_url
    assert_response :success
  end

  test "should get new" do
    get new_noshow_url
    assert_response :success
  end

  test "should create noshow" do
    assert_difference('Noshow.count') do
      post noshows_url, params: { noshow: { amessage: @noshow.amessage } }
    end

    assert_redirected_to noshow_url(Noshow.last)
  end

  test "should show noshow" do
    get noshow_url(@noshow)
    assert_response :success
  end

  test "should get edit" do
    get edit_noshow_url(@noshow)
    assert_response :success
  end

  test "should update noshow" do
    patch noshow_url(@noshow), params: { noshow: { amessage: @noshow.amessage } }
    assert_redirected_to noshow_url(@noshow)
  end

  test "should destroy noshow" do
    assert_difference('Noshow.count', -1) do
      delete noshow_url(@noshow)
    end

    assert_redirected_to noshows_url
  end
end
