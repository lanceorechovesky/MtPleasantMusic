class CreateSubItems < ActiveRecord::Migration
  def change
    create_table :sub_items do |t|
      t.string :type
      t.string :name
      t.float :price
      t.integer :inventory_id
      t.timestamps
    end
  end
end
