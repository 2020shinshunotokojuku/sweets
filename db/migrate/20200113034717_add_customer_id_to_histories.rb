class AddCustomerIdToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :customer_id, :integer
  end
end
