require 'test_helper'

class PionnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pionner = pionners(:one)
  end

  test "should get index" do
    get pionners_url
    assert_response :success
  end

  test "should get new" do
    get new_pionner_url
    assert_response :success
  end

  test "should create pionner" do
    assert_difference('Pionner.count') do
      post pionners_url, params: { pionner: { first_name: @pionner.first_name, last_name: @pionner.last_name } }
    end

    assert_redirected_to pionner_url(Pionner.last)
  end

  test "should show pionner" do
    get pionner_url(@pionner)
    assert_response :success
  end

  test "should get edit" do
    get edit_pionner_url(@pionner)
    assert_response :success
  end

  test "should update pionner" do
    patch pionner_url(@pionner), params: { pionner: { first_name: @pionner.first_name, last_name: @pionner.last_name } }
    assert_redirected_to pionner_url(@pionner)
  end

  test "should destroy pionner" do
    assert_difference('Pionner.count', -1) do
      delete pionner_url(@pionner)
    end

    assert_redirected_to pionners_url
  end
end
