require 'test_helper'

class DevelopmentControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get development_dashboard_url
    assert_response :success
  end

end
