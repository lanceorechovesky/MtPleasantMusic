class InventoriesController < ApplicationController
  before_action :find_inventory, only: [:show, :edit, :update, :destroy]

  def index
    @inventories = Inventory.all
  end

  def show
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.create inventory_data
    if @inventory.save == true
      redirect_to inventories_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @inventory.update_attributes inventory_data
      redirect_to inventories_path
    else
      render :edit
    end
  end

  def destroy
    @inventory.delete
    redirect_to inventories_path
  end

private
  def find_inventory
    @inventory = Inventory.find params[:id]
  end

  def inventory_data
    params.require(:inventory).permit(:item_type, :related_instrument, :price, :in_stock, :disc, :avatar)
  end
end





















