class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.references :parent, foreign_key: true
      t.string :breadcrumb
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
