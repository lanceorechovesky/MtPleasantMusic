class Inventory < ActiveRecord::Base
  has_many :sub_items
end
