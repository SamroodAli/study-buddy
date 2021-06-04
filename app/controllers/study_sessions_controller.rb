class StudySessionsController < ApplicationController
  before_action :login_required
  def index
    @study_sessions = if params[:recent] == 'false'
                        current_user.study_sessions.ancient.includes(:author, :collection)
                      else
                        current_user.study_sessions.recent.includes(:author, :collection)
                      end
    @total = @study_sessions.total
  end

  def new
    @collections = current_user.available_collections_for_select
    @selected = @collections.first
    @study_session = current_user.study_sessions.build
  end

  def external
    @study_sessions = if params[:recent] == 'false'
                        current_user.collections.my_external.study_sessions.ancient.includes(:author, :collection)
                      else
                        current_user.collections.my_external.study_sessions.recent.includes(:author, :collection)
                      end
    @total = @study_sessions.total
    render :index
  end

  def create
    session_params[:collection_id] = '1' if session_params[:collection_id].nil?
    duration_start = time(session_params[:duration_start])
    duration_end = time(session_params[:duration_end])
    if (duration = calc_duration(duration_start, duration_end))
      @study_session = current_user.study_sessions.build(session_params)
      @study_session.update(
        name: session_params[:name],
        duration_start: duration_start,
        duration_end: duration_end,
        duration: duration
      )
      if @study_session.valid? & @study_session.save
        flash[:success] = "Session #{@study_session.name} created successfully"
        redirect_to study_session_path(@study_session, no_sort: true)
      end
    else
      flash[:danger] = "'Duration end' should be greater than 'duration start'"
      redirect_back(fallback_location: new_study_session_path)
    end
  end

  def update
    @study_session = StudySession.find(params[:id])
    @study_session.update(session_params)
    flash[:success] = 'Note updated'
    redirect_to @study_session
  end

  def show
    @study_session = StudySession.find(params[:id])
  end

  private

  def session_params
    params.require(:study_session).permit(:name, :user_id, :collection_id, :duration_start, :duration_end, :note)
  end
end
