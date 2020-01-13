class AddItemIdToHistoryDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :history_details, :item_id, :integer
  end
end
