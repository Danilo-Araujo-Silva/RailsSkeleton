require 'test_helper'

class UsersPermissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_permission = users_permissions(:one)
  end

  test "should get index" do
    get users_permissions_url
    assert_response :success
  end

  test "should get new" do
    get new_users_permissions_url
    assert_response :success
  end

  test "should create user_permission" do
    assert_difference('UserPermission.count') do
      post users_permissions_url, params: {user_permission: {created_by: @user_permission.created_by, grant: @user_permission.grant, permission_id: @user_permission.permission_id, updated_by: @user_permission.updated_by, user_id: @user_permission.user_id } }
    end

    assert_redirected_to users_permissions_url(UserPermission.last)
  end

  test "should show user_permission" do
    get users_permissions_url(@user_permission)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_permissions_url(@user_permission)
    assert_response :success
  end

  test "should update user_permission" do
    patch users_permissions_url(@user_permission), params: {user_permission: {created_by: @user_permission.created_by, grant: @user_permission.grant, permission_id: @user_permission.permission_id, updated_by: @user_permission.updated_by, user_id: @user_permission.user_id } }
    assert_redirected_to users_permissions_url(@user_permission)
  end

  test "should destroy user_permission" do
    assert_difference('UserPermission.count', -1) do
      delete users_permissions_url(@user_permission)
    end

    assert_redirected_to users_permissions_url
  end
end
