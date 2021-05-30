class GroupsController < ApplicationController
  def index
    @groups = current_user.groups
  end

  def show
  end

  def new
    @group = current_user.groups.build
  end
end
