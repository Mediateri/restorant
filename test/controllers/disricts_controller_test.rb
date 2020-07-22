require 'test_helper'

class DisrictsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disrict = disricts(:one)
  end

  test "should get index" do
    get disricts_url
    assert_response :success
  end

  test "should get new" do
    get new_disrict_url
    assert_response :success
  end

  test "should create disrict" do
    assert_difference('Disrict.count') do
      post disricts_url, params: { disrict: { name: @disrict.name } }
    end

    assert_redirected_to disrict_url(Disrict.last)
  end

  test "should show disrict" do
    get disrict_url(@disrict)
    assert_response :success
  end

  test "should get edit" do
    get edit_disrict_url(@disrict)
    assert_response :success
  end

  test "should update disrict" do
    patch disrict_url(@disrict), params: { disrict: { name: @disrict.name } }
    assert_redirected_to disrict_url(@disrict)
  end

  test "should destroy disrict" do
    assert_difference('Disrict.count', -1) do
      delete disrict_url(@disrict)
    end

    assert_redirected_to disricts_url
  end
end
