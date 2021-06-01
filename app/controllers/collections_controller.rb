class CollectionsController < ApplicationController
  def index
    @collections = current_user.collections
  end

  def all
    @collections = Collection.internal.all
    render :index
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = current_user.collections.build
  end

  def new_group_session
    @study_session = current_user.study_sessions.build(collection_id:params[:id])
    render 'study_session#new'
  end

  def create
    @collection = current_user.collections.create(collection_params)
    redirect_to @collection
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end
end
