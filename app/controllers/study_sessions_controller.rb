class StudySessionsController < ApplicationController
  def index
    @study_sessions = current_user.study_sessions
  end
  
  def new
    @study_session = current_user.study_sessions.build
  end

  def create
    @study_session = current_user.study_sessions.build(session_params)
    @study_session.update(group_id:1)
    if @study_session.save
      redirect_to @study_session
    else
      flash[:alert]='something happened'
      flash[:notice]= @study_session.to_json
      redirect_to new_study_session_url
    end

  end


  def show
  end

  private
  def session_params
    params.require(:study_session).permit(:name,:user_id)
  end

end
