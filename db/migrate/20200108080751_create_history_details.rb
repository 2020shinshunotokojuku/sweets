class CreateHistoryDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :history_details do |t|
      t.integer :quantity
      t.integer :production_status
      t.integer :price

      t.timestamps
    end
  end
end
