class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string     :street
      t.string     :apartment, limit: 80
      t.string     :city, limit: 80
      t.string     :region, limit: 80
      t.string     :postal_code, limit: 80
      t.string     :country, limit: 80
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
