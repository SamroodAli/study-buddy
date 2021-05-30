class SessionsController < ApplicationController

  def index
    @sessions = current_user.sessions
  end

  def show
  end
end
