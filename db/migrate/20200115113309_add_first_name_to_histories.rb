class AddFirstNameToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :first_name, :string
  end
end
