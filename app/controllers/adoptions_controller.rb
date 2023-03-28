class AdoptionsController < ApplicationController
  def create
    @adoption = Adoption.new(adoption_params)
    @adoption.user = current_user
    @adoption.tree = Tree.find(params[:tree_id])
    @adoption.save
    raise
  end

  private
  def adoption_params
    params.require(:adoption).permit(:starts_at, :ends_at, :name)
  end
end
