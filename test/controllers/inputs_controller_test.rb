require "test_helper"

class InputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @input = inputs(:one)
    sign_in users(:regular)
  end

  test "redirected if not logged in" do
    sign_out :user
    get inputs_url
    assert_response :redirect
  end

  test "can get index" do
    get inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_input_url
    assert_response :success
  end

  test "should create input" do
    assert_difference('Input.count') do
      post inputs_url, params: { input: { number: @input.number } }
    end

    assert_response :success
  end

  test "should show input" do
    get input_url(@input)
    assert_response :success
  end

  test "should destroy input" do
    assert_difference('Input.count', -1) do
      delete input_url(@input)
    end

    assert_redirected_to inputs_url
  end
end
