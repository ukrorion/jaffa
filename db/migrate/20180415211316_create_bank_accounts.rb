class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.string :bank_name
      t.string :bic
      t.integer :number
      t.belongs_to :company, index: true

      t.timestamps
    end
  end
end
