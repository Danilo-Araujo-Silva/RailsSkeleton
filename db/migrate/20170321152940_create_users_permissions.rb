class CreateUsersPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :users_permissions do |t|
      t.references :user, null: false, index: true, foreign_key: true, comment: 'Id of user.'
      t.references :permission, null: false, index: true, foreign_key: true, comment: 'If of the permission.'
      t.string :grant, null: false, index: true, comment: 'Indicates whether the user could grant permissions to others.'

      t.integer :created_by, null: false, comment: 'Id of the user who created the record.'
      t.integer :updated_by, null: false, comment: 'Id of the user who did the last change in the record.'

      t.timestamps
    end
  end
end