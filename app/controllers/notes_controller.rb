class NotesController < ApplicationController
  before_action :login_required

  def show
    @note = Note.find(params[:id])
  end

  def index
    @notes = current_user.notes.all
  end

  def new
    @note = current_user.notes.build
  end

  def create
    @note = current_user.notes.new(notes_params)
    if @note.valid? && @note.save
      flash[:success] = "Note #{@note.title} saved successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def notes_params
    params.require(:note).permit(:title, :content)
  end
end
