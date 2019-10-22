require 'test_helper'

class JoanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get joan_index_url
    assert_response :success
  end

end
