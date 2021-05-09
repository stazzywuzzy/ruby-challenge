require "test_helper"

class InputTest < ActiveSupport::TestCase

  test "number input validation should trigger" do
  	assert_not inputs(:input_invalid).save
  end
  
end