require 'test_helper'

class Public::ErrorControllerTest < ActionDispatch::IntegrationTest
  test "should get not_found" do
    get public_error_not_found_url
    assert_response :success
  end

end
