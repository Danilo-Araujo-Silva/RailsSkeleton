class AddDeviseToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      # t.string :email, null: false, default: "", comment: "User's e-mail."
      t.string :encrypted_password, null: false, default: '', comment: "User's encrypted password."

      ## Recoverable
      t.string   :reset_password_token, comment: 'Token to reset the password.'
      t.datetime :reset_password_sent_at, comment: 'Datetime when the password reset token was sent.'

      ## Rememberable
      t.datetime :remember_created_at, comment: 'Datetime when the remember cookie was created.'

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false, comment: 'Counter of how many times an user signed in.'
      t.datetime :current_sign_in_at, comment: "User's current sign in datetime."
      t.datetime :last_sign_in_at, comment: "User's last sign in datetime."
      t.string   :current_sign_in_ip, comment: "User's current sign in IP."
      t.string   :last_sign_in_ip, comment: "User's last sign in IP."

      ## Confirmable
      t.string   :confirmation_token, comment: "Token to confirm user's account."
      t.datetime :confirmed_at, comment: 'Datetime when the account was confirmed.'
      t.datetime :confirmation_sent_at, comment: 'Datetime when the confirmation message was sent.'
      t.string   :unconfirmed_email, comment: "User's e-mail to be confirmed, when changing the e-mail." # Only if using reconfirmable

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false, comment: 'Counter of how many times an user failed to sign in.' # Only if lock strategy is :failed_attempts
      t.string   :unlock_token, comment: "Token to unlock the account if it's locked" # Only if unlock strategy is :email or :both
      t.datetime :locked_at, comment: 'Datetime when the account was locked.'


      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    # add_index :users, :email, unique: true, comment: "The user's e-mail should be unique."
    add_index :users, :reset_password_token, unique: true, comment: "The reset password token should be unique."
    add_index :users, :confirmation_token, unique: true, comment: "The confirmation token should be unique."
    add_index :users, :unlock_token, unique: true, comment: "The unlock token should be unique."
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
