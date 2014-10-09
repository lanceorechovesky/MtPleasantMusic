class SubItemsController < ApplicationController
  before_action :find_inventory, only: [:show, :index, :new, :create, :edit, :update, :destroy]
  before_action :find_subitem, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

  def update
    if @subitem.update_attributes subitem_data
      redirect_to inventory_sub_items_path(@inventory)
    else
      render :edit
    end
  end

  def destroy
  end

private
  def find_subitem
    @subitem = SubItem.find params[:id]
  end

  def find_inventory
    @inventory = Inventory.find params[:inventory_id]
  end

  def subitem_data
     params.require(:sub_item).permit(:brand, :name, :price, :inventory_id, :avatar)
  end
end
