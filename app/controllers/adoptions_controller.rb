class AdoptionsController < ApplicationController
  def show
    @adoption = Adoption.find(params[:id])
  end



  def create
    @adoption = Adoption.new(adoption_params)
    @adoption.user = current_user
    @adoption.tree = Tree.find(params[:tree_id])
    if @adoption.save
      redirect_to myadopt_path
    else
      render "trees/show"
    end

  end

  private
  def adoption_params
    params.require(:adoption).permit(:starts_at, :ends_at, :name)
  end
end
