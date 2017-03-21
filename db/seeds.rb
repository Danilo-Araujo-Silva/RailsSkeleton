# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  {
    username: 'root',
    name: 'Root User',
    email: 'root@localhost',
    password: '8cd824c700eb0c125fff40c8c185d14c5dfe7f32814afac079ba7c20d93bc3c082193243c420fed22ef2474fbb85880e7bc1ca772150a1f759f8ddebca77711f', # SHA-3 hash with salt.
    # created_by: null,
    # updated_by: null
  }
)

Permission.create(
  {
    # parent: null,
    breadcrumb: '1', # Automatically computed.
    name: 'root',
    description: 'Most powerfull permission.',
    created_by: 1,
    updated_by: 1
  }
)

UserPermission.create(
  {
    user_id: 1,
    permission_id: 1,
    grant: 'all',
    created_by: 1,
    updated_by: 1
  }
)
