class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title
      t.integer :age
      t.text :bio
      t.timestamps
    end
  end
end
