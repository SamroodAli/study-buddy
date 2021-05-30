class SessionsController < ApplicationController

  def index
    @sessions = current_user.sessions
  end
  
  def new
    @session = current_user.sessions.build
  end


  def show
  end
end
