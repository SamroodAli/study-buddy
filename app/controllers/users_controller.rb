class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid? && @user.save
      log_in @user
      flash[:success] = 'Welcome to Study Buddy'
      redirect_to @user
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      flash[:danger] = 'Please provide valid entries'
      render :edit
    end
  end


  def destroy
    User.find_by(id: params[:id]).destroy
    flash[:success] = 'User deleted'
    redirect_to users_url
  end

end
