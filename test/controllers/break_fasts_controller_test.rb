require 'test_helper'

class BreakFastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @break_fast = break_fasts(:one)
  end

  test "should get index" do
    get break_fasts_url
    assert_response :success
  end

  test "should get new" do
    get new_break_fast_url
    assert_response :success
  end

  test "should create break_fast" do
    assert_difference('BreakFast.count') do
      post break_fasts_url, params: { break_fast: { cost: @break_fast.cost, item: @break_fast.item, restora_id: @break_fast.restora_id } }
    end

    assert_redirected_to break_fast_url(BreakFast.last)
  end

  test "should show break_fast" do
    get break_fast_url(@break_fast)
    assert_response :success
  end

  test "should get edit" do
    get edit_break_fast_url(@break_fast)
    assert_response :success
  end

  test "should update break_fast" do
    patch break_fast_url(@break_fast), params: { break_fast: { cost: @break_fast.cost, item: @break_fast.item, restora_id: @break_fast.restora_id } }
    assert_redirected_to break_fast_url(@break_fast)
  end

  test "should destroy break_fast" do
    assert_difference('BreakFast.count', -1) do
      delete break_fast_url(@break_fast)
    end

    assert_redirected_to break_fasts_url
  end
end
