class AddHistoryIdToHistoryDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :history_details, :history_id, :integer
  end
end
