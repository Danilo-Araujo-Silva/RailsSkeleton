# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if (!User.exists?(1))
  User.create!(
    {
      id: 1,
      username: 'root',
      name: 'Root Administrator',
      email: 'root@127.0.0.1',
      password: 'k.y23B^4',
      password_confirmation: 'k.y23B^4',
      created_by_id: 1,
      updated_by_id: 1
    }
  )
end

if (!Permission.exists?(1))
  Permission.create!(
    {
      id: 1,
      parent_id: nil,
      breadcrumb: '1',
      name: 'root',
      description: 'Root permission.',
      created_by_id: 1,
      updated_by_id: 1
    }
  )
end

if (!UserPermission.exists?(1))
  UserPermission.create!(
    {
      id: 1,
      user_id: 1,
      permission_id: 1,
      grant: 'all',
      created_by_id: 1,
      updated_by_id: 1
    }
  )
end