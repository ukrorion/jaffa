class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :first_name
      t.string :last_name
      t.integer :login_count
      t.datetime :last_login_at

      t.timestamps
    end
    add_index :users, :email
  end
end
