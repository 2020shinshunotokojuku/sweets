class AddCustomerIdToCartContents < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_contents, :customer_id, :integer
  end
end
