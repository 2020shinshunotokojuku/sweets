class CreateHistoryDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :history_details do |t|
      t.integer :quantity
      t.integer :production_status, null: false, default: 0
      t.integer :price
      t.integer :item_id
      t.integer :history_id

      t.timestamps
    end
  end
end
