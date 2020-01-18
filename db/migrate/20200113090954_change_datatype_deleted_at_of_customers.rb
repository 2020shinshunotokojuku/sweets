class ChangeDatatypeDeletedAtOfCustomers < ActiveRecord::Migration[5.2]
  def change
  	change_column :customers, :deleted_at, :datetime
  end
end
