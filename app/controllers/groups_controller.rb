class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def show
  end

  def new
    @group = current_user.groups.build
  end


  def create
    current_user.groups.create(group_params)
  end


  private
  def group_params
    params.require(:group).permit(:name)
  end
end
