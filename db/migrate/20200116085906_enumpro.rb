class Enumpro < ActiveRecord::Migration[5.2]
  def change
  	change_column :history_details, :production_status, :integer, null: false, default: 0
  end
end
