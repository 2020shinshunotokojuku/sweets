class Enumorder < ActiveRecord::Migration[5.2]
  def change
  	change_column :histories, :order_status, :integer, null: false, default: 0
  end
end
