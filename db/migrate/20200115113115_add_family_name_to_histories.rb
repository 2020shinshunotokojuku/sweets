class AddFamilyNameToHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :family_name, :string
  end
end
