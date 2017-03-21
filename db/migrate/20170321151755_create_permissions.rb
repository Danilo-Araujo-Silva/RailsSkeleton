class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.integer :parent_id, null: true, index: true, comment: 'Id of the parent permission, if exists.'
      t.string :breadcrumb, null: false, index: true, comment: 'Breadcrumb of the permission.'
      t.string :name, null: false, index: true, comment: 'Name of the permission.'
      t.string :description, null: false, comment: 'Description of the permission.'

      t.integer :created_by, null: false, index: false, comment: 'Id of the user who created the record.'
      t.integer :updated_by, null: false, index: false, comment: 'Id of the user who did the last change in the record.'

      t.timestamps
    end
  end
end
