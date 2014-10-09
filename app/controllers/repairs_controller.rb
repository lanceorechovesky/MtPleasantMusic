class RepairsController < ApplicationController
  before_action :find_repair, only: [:show, :edit, :update, :destroy, :create_comment, :destroy_comment]

  def show
  end

  def index
    @repairs = Repair.all
    @comment = Comment.new
  end

  def create_comment
    @comment = @repair.comments.create comment_data
    redirect_to repairs_path
  end

  def destroy_comment
    @comment = @repair.comments.find params[:comment_id]
    @comment.delete
    redirect_to repairs_path
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

  def edit
  end

  def update
    if @repair.update_attributes repair_data
      redirect_to repairs_path
    else
      render :edit
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

  def comment_data
    params.require(:comment).permit(:body)
  end

  def find_repair
    @repair = Repair.find params[:id]
  end

  def repair_data
    params.require(:repair).permit(:name, :workflow_state)
  end
end
