class ChangeDatatypePaymentMethodOfHistories < ActiveRecord::Migration[5.2]
  def change
  	change_column :histories, :payment_method, :integer, null: false, default: 1
  end
end
