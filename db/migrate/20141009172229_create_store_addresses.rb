class CreateStoreAddresses < ActiveRecord::Migration
  def change
    create_table :store_addresses do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
