class NotesController < ApplicationController
  before_action :login_required

  def show
  end

  def index
  end

  def new
    current_user.notes.build
  end
end
