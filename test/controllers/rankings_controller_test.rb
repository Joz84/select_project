require "test_helper"

class RankingsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get rankings_update_url
    assert_response :success
  end
end
