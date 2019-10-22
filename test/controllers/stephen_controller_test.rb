require 'test_helper'

class StephenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stephen_index_url
    assert_response :success
  end

end
