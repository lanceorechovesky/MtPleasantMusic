class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :item_type
      t.string :related_instrument
      t.float :price
      t.integer :in_stock
      t.timestamps
    end
  end
end
