class SubItem < ActiveRecord::Base
  belongs_to :inventory

  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
