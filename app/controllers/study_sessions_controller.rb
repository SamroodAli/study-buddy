class StudySessionsController < ApplicationController
  def index
    @study_sessions = current_user.study_sessions
  end
  
  def new
    @study_session = current_user.study_sessions.build
  end

  def create
    @study_session = current_user.study_sessions.build(session_params)
    if @study_session.save
      redirect_to @study_session
    else
      flash[:alert]= "#{params[:group_id]} asdasd"
      redirect_to new_study_session_url
    end

  end


  def show
  @study_session = StudySession.find(params[:id])
  end

  private
  def session_params
    params.require(:study_session).permit(:name,:user_id,:group_id)
  end

end
