class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.string :post_number
      t.text :address
      t.string :name
      t.integer :customer_id

      t.timestamps
    end
  end
end