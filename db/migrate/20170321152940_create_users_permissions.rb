class CreateUsersPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :users_permissions do |t|
      t.references :user, null: false, index: true, foreign_key: true, comment: "User's id."
      t.references :permission, null: false, index: true, foreign_key: true, comment: "Permission's id."
      t.string :grant, null: false, index: true, comment: "Indicates if the user could grant permissions to others."

      t.integer :created_by_id, comment: "User's id who created the record."
      t.integer :updated_by_id, comment: "User's id who did the last change in the record."

      t.timestamps
    end
  end
end