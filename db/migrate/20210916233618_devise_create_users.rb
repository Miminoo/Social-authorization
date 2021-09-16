class DeviseCreateUsers < ActiveRecord::Migration[6.1]

  def change
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :name, null: false, default: ""
      t.boolean :status, default: true
      t.date :first_sign_in_at
      t.date :last_sign_in_at
      t.timestamps null: false
    end
    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
