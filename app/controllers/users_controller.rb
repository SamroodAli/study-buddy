class UsersController < ApplicationController
  def show
    @user = current_user
  end


  def create
    current_user.group.create!(name:'non_group').save!
  end
end
