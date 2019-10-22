require 'test_helper'

class DramaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drama_index_url
    assert_response :success
  end

end
