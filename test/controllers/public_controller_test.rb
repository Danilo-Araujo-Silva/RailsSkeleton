require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get public_about_url
    assert_response :success
  end

  test "should get careers" do
    get public_careers_url
    assert_response :success
  end

  test "should get help" do
    get public_help_url
    assert_response :success
  end

  test "should get landing" do
    get public_landing_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get public_privacy_policy_url
    assert_response :success
  end

  test "should get terms_of_service" do
    get public_terms_of_service_url
    assert_response :success
  end

end
