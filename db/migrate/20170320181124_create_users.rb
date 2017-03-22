class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, index: true, comment: "User's username."
      t.string :name, null: false, index: true, comment: "User's full name."
      t.string :email, null: false, index: true, comment: "User's main e-mail."

      t.integer :created_by_id, comment: "User's id who created the record."
      t.integer :updated_by_id, comment: "User's id who did the last change in the record."

      t.timestamps
    end
  end
end
