class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, index: true, comment: 'Username of the user.'
      t.string :name, null: false, index: true, comment: 'Full name of the user.'
      t.string :email, null: false, index: true, comment: 'Main e-mail of the user.'
      t.string :password, null: false, comment: "Hashed version of the user's password."

      t.integer :created_by, comment: 'Id of the user who created the record.'
      t.integer :updated_by, comment: 'Id of the user who did the last change in the record.'

      t.timestamps
    end
  end
end
