class SubItemsController < ApplicationController
  before_action :find_inventory, only: [:index, :new, :create]

  def index
    @subitems = SubItem.all
  end

  def new
    @subitem = SubItem.new
  end

  def create
    @subitem = @inventory.sub_items.new(subitem_data)
    if @subitem.save == true
      redirect_to inventory_sub_items_path(@inventory)
    else
      render :new
    end
  end

private
  def find_inventory
    @inventory = Inventory.find params[:inventory_id]
  end

  def subitem_data
     params.require(:sub_item).permit(:type, :name, :price, :inventory_id)
  end
end
