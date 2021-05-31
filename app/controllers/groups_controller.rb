class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def show; 
  @group = Group.find(params[:id])
  end

  def new
    @group = current_user.groups.build
  end

  def create
    @group = current_user.groups.create(group_params)
    redirect_to @group
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
