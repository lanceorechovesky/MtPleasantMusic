class AddAttachmentAvatarToSubItems < ActiveRecord::Migration
  def self.up
    change_table :sub_items do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :sub_items, :avatar
  end
end
