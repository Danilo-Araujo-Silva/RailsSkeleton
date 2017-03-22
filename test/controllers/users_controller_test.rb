require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @existent_user = users(:two)

    @new_user = User.new
    @new_user.id = Faker::Number.number(5)
    @new_user.username = Faker::Name.unique.first_name.downcase
    @new_user.name = Faker::Name.name
    @new_user.email = Faker::Internet.unique.email
    @new_user.password = Faker::Lorem.characters(10)
    @new_user.created_by_id = 1
    @new_user.updated_by_id = 1
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: @new_user.email, name: @new_user.name, password: @new_user.password, username: @new_user.username } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@existent_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@existent_user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@existent_user), params: { user: { email: @existent_user.email, name: @existent_user.name, password: @existent_user.password, username: @existent_user.username } }
    assert_redirected_to user_url(@existent_user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@existent_user)
    end

    assert_redirected_to users_url
  end
end
