class AddRoleToUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.integer :role, index: true
    end
  end
end
