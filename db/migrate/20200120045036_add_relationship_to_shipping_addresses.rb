class AddRelationshipToShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :shipping_addresses, :relationship, :text
  end
end
