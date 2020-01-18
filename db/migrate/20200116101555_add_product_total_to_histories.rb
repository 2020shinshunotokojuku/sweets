class AddProductTotalToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :product_total, :integer
  end
end
