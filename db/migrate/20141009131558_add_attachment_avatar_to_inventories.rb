class AddAttachmentAvatarToInventories < ActiveRecord::Migration
  def self.up
    change_table :inventories do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :inventories, :avatar
  end
end
