class GuitarsController < ApplicationController
  before_action :find_inventory, only: [:index]

  def index
  end

private
  def find_inventory
    @inventory = Inventory.find params[:inventory_id]
  end  
end
