class AddUserGeneralFields < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.string :first_name, limit: 50
      t.string :last_name, limit: 50
      t.string :middle_name, limit: 50
      t.integer :tax_number, index: true
    end
  end
end
