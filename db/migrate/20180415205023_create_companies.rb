class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tax_number
      t.string :certificate_number

      t.timestamps
    end
  end
end
