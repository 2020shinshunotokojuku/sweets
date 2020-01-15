class CreateItems < ActiveRecord::Migration[5.2] 
  def change
    create_table :items do |t|
      t.integer :without_tax
      t.text :dess_item
      t.string :image_id
      t.boolean :is_sale ,default: true, null:false
      t.string :item_name

      t.timestamps
    end
  end
end
