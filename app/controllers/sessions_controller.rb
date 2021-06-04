class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user&.authenticate(user_params[:password])
      forwarding_url = session[:forwarding_url]
      reset_session
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      log_in @user
      redirect_to forwarding_url || @user
    else
      flash.now[:danger] = 'Invalid email/password combination.'
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def user_params
    params.require(:session).permit(:email, :password)
  end
end
