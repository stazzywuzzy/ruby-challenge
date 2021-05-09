require "test_helper"

class InputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @input = inputs(:one)
    sign_in users(:user1)
  end

  test "redirected if not logged in" do
    sign_out :user
    get inputs_url
    assert_response :redirect
  end

  test "get index -> success" do
    get inputs_url
    assert_response :success
  end

  test "get new input -> success" do
    get new_input_url
    assert_response :success
  end

  test "create input -> success" do
    assert_difference('Input.count') do
      post inputs_url, params: { input: { number: @input.number } }
    end

    assert_response :success
  end

  test "show input -> success" do
    get input_url(@input)
    assert_response :success
  end

  test "destroy input -> success" do
    assert_difference('Input.count', -1) do
      delete input_url(@input)
    end

    assert_redirected_to inputs_url
  end


  test "multi user login -> success" do
    sign_in users(:user2)
    sign_in users(:user3)
    sign_in users(:user4)
    sign_in users(:user5)

    get inputs_url
    assert_response :success
  end

end
