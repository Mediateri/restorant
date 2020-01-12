require 'test_helper'

class RestorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restora = restoras(:one)
  end

  test "should get index" do
    get restoras_url
    assert_response :success
  end

  test "should get new" do
    get new_restora_url
    assert_response :success
  end

  test "should create restora" do
    assert_difference('Restora.count') do
      post restoras_url, params: { restora: { description: @restora.description, image: @restora.image, location: @restora.location, name: @restora.name } }
    end

    assert_redirected_to restora_url(Restora.last)
  end

  test "should show restora" do
    get restora_url(@restora)
    assert_response :success
  end

  test "should get edit" do
    get edit_restora_url(@restora)
    assert_response :success
  end

  test "should update restora" do
    patch restora_url(@restora), params: { restora: { description: @restora.description, image: @restora.image, location: @restora.location, name: @restora.name } }
    assert_redirected_to restora_url(@restora)
  end

  test "should destroy restora" do
    assert_difference('Restora.count', -1) do
      delete restora_url(@restora)
    end

    assert_redirected_to restoras_url
  end
end
