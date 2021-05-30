class StudySessionsController < ApplicationController
  def index
    @study_sessions = current_user.sessions
  end
  
  def new
    @study_session = current_user.sessions.build
  end

  def create
    study_session = Session.new(session_params)
    study_session.group_id = 1 if session.group_id = nil 
    study_session.save
  end


  def show
  end

  private
  def session_params
    params.require(:study_session).permit(:name)
  end

end
