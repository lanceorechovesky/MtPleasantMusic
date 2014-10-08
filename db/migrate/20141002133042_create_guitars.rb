class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :name
      t.string :type
      t.float :price
      t.timestamps
    end
  end
end
