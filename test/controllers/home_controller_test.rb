require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get home_users_url
    assert_response :success
  end
end
