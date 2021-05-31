class StudySessionsController < ApplicationController
  def index
    @study_sessions = current_user.study_sessions
    @total = @study_sessions.map(&:duration).sum
  end

  def new
    @study_session = current_user.study_sessions.build
  end

  def external
    @study_sessions = current_user.collections.external.study_sessions
    render :index
  end

  def create
    duration_start = time(session_params[:duration_start])
    duration_end = time(session_params[:duration_end])
    duration = calc_duration(duration_start, duration_end)

    @study_session = current_user.study_sessions.build(session_params)
    @study_session.update(
      name: session_params[:name],
      duration_start: duration_start,
      duration_end: duration_end,
      duration: duration
    )
    if @study_session.save
      redirect_to @study_session
    else
      redirect_to new_study_session_url
    end
  end

  def show
    @study_session = StudySession.find(params[:id])
  end

  private

  def session_params
    params.require(:study_session).permit(:name, :user_id, :collection_id, :duration_start, :duration_end)
  end
end
