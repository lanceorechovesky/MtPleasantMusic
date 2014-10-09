class AddAttachmentPictureToInventories < ActiveRecord::Migration
  def self.up
    change_table :inventories do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :inventories, :picture
  end
end
