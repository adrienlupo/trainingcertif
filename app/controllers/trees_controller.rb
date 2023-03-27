class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user
    if @tree.save
      redirect_to tree_path(@tree)
    else
      render :new, notice: "Something went wrong"
    end
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :address, :description, :fruit_type, :price_per_year, :quantity_per_year, photos: [])
  end

end
