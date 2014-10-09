class ChangeTypeToBrandInSubItem < ActiveRecord::Migration
  def change
    add_column :sub_items, :brand, :string

    remove_column :sub_items, :type, :string
  end
end
