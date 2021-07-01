require "test_helper"

class TheatersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get theaters_index_url
    assert_response :success
  end
end
