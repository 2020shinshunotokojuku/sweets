class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.integer :total_fee
      t.text :address
      t.integer :payment_method
      t.integer :postage
      t.integer :order_status
      t.string :post_number
      t.string :name

      t.timestamps
    end
  end
end
