class AddInventorysIdToGuitar < ActiveRecord::Migration
  def change
    add_column :guitars, :inventory_id, :integer
  end
end
