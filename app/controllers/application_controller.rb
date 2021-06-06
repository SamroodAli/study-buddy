class ApplicationController < ActionController::Base
  include ApplicationHelper
  include SessionsHelper

  def login_required
    return if logged_in?

    store_original_url
    flash[:danger] = 'Please log in'
    redirect_to login_url
  end
end
