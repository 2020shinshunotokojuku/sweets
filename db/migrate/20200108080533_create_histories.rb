class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.integer :total_fee
      t.text :address
      t.integer :payment_method,null: false, default: 0
      t.integer :postage
      t.integer :order_status, null: false, default: 0
      t.string :post_number
      t.string :name
      t.integer :product_total
      t.integer :customer_id

      t.timestamps
    end
  end
end