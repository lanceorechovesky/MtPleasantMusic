class RepairsController < ApplicationController
  before_action :find_repair, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @repairs = Repair.all
  end

  def new
    @repair = Repair.new
  end

  def create
    @repair = Repair.create repair_data
    if @repair.save == true
      redirect_to repairs_path
    else
      render :new
    end
  end

  def destroy
    @repair.delete
    redirect_to repairs_path
  end

  def in_progress
    @repair = find_repair.started!
    redirect_to repairs_path
  end

  def finished
    @repair = find_repair.finishing!
    redirect_to repairs_path
  end

private

  def find_repair
    @repair = Repair.find params[:id]
  end

  def repair_data
    params.require(:repair).permit(:name, :workflow_state)
  end
end
