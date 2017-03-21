json.extract! user_permission, :id, :user_id, :permission_id, :grant, :created_at, :updated_at
json.url user_permission_url(user_permission, format: :json)