class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :name
      t.string :workflow_state
      t.timestamps
    end
  end
end
