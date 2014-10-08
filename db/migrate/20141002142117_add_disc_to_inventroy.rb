class AddDiscToInventroy < ActiveRecord::Migration
  def change
    add_column :inventories, :disc, :text
  end
end
