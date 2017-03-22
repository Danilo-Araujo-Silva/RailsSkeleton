class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.integer :parent_id, null: true, index: true, comment: "Parent permission's id, if exists."
      t.string :breadcrumb, null: false, index: true, comment: "Permission's breadcrumb."
      t.string :name, null: false, index: true, comment: "Permission's name."
      t.string :description, null: false, comment: "Permission's description."

      t.integer :created_by_id, comment: "User's id who created the record."
      t.integer :updated_by_id, comment: "User's id who did the last change in the record."

      t.timestamps
    end
  end
end
