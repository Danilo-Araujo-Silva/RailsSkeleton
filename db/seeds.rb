# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if (!User.exists?(1))
  ActiveRecord::Base.transaction do
    User.create!(
      [
        {
          id: 1,
          username: 'root',
          name: 'Root',
          email: 'root@127.0.0.1',
          password: 'k.y23B^4',
          password_confirmation: 'k.y23B^4',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 2,
          username: 'developer',
          name: 'Developer',
          email: 'developer@127.0.0.1',
          password: 'Fb*V2v9a',
          password_confirmation: 'Fb*V2v9a',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 3,
          username: 'administrator',
          name: 'Administrator',
          email: 'administrator@127.0.0.1',
          password: '8W7>w<H_',
          password_confirmation: '8W7>w<H_',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 4,
          username: 'user',
          name: 'User',
          email: 'user@127.0.0.1',
          password: 'c:*WF3/2',
          password_confirmation: 'c:*WF3/2',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 5,
          username: 'public',
          name: 'Public User',
          email: 'public@127.0.0.1',
          password: 'Q/4@p>rB',
          password_confirmation: 'Q/4@p>rB',
          created_by_id: 1,
          updated_by_id: 1
        }
      ]
    )

    Permission.create(
      [
        {
          id: 1,
          parent_id: nil,
          name: 'root',
          description: 'Root permission.',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 2,
          parent_id: 1,
          name: 'developer',
          description: 'Development permission.',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 3,
          parent_id: 1,
          name: 'administrator',
          description: 'Administration permission.',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 4,
          parent_id: 1,
          name: 'user',
          description: 'User permission.',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 5,
          parent_id: 1,
          name: 'public',
          description: 'Public permission.',
          created_by_id: 1,
          updated_by_id: 1
        }
      ]
    )

    UserPermission.create!(
      [
        {
          id: 1,
          user_id: 1,
          permission_id: 1,
          grant: '<=>',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 2,
          user_id: 2,
          permission_id: 2,
          grant: '<=',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 3,
          user_id: 3,
          permission_id: 3,
          grant: '<=',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 4,
          user_id: 4,
          permission_id: 4,
          grant: '',
          created_by_id: 1,
          updated_by_id: 1
        },
        {
          id: 5,
          user_id: 5,
          permission_id: 5,
          grant: '',
          created_by_id: 1,
          updated_by_id: 1
        }
      ]
    )
  end
end