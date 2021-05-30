class SessionsController < ApplicationController

  def index
    current_user.sessions
  end

  def show
  end
end
