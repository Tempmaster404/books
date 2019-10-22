require 'test_helper'

class ClassicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get classic_index_url
    assert_response :success
  end

end
