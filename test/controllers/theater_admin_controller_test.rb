require "test_helper"

class TheaterAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get theater_admin_index_url
    assert_response :success
  end
end
