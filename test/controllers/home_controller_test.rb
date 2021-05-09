require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
	test "get home page -> success" do
	    get root_url
	    assert_response :success
  end	
end
