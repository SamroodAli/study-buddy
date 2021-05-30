class ApplicationController < ActionController::Base
  include SessionsHelper

  def login_required
    unless logged_in?
      store_original_url
      flash[:danger] = 'PLease log in'
      redirect_to login_url
    end
  end
end
