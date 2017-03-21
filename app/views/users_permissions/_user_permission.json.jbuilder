json.extract! user_permission, :id, :user_id, :permission_id, :grant, :created_by, :updated_by, :created_at, :updated_at
json.url users_permissions_url(user_permission, format: :json)