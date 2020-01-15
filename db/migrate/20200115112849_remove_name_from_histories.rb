class RemoveNameFromHistories < ActiveRecord::Migration[5.2]
  def change
    remove_column :histories, :name, :string
  end
end
