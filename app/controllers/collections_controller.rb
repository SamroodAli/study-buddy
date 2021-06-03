class CollectionsController < ApplicationController
  def index
    @collections = current_user.collections.internal.includes(:user,image_attachment: :blob)
  end

  def all
    @collections = Collection.internal.all.includes(:user,image_attachment: :blob)
    render :index
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = current_user.collections.build
  end

  def sessions
    @collection = Collection.find(params[:id])
    if params[:recent] == "false"
      @study_sessions = @collection.study_sessions.ancient.includes(:author)
    else
      @study_sessions = @collection.study_sessions.recent.includes(:author)
    end
    @total = @study_sessions.total
    render 'study_sessions/index'
  end

  def new_session
    current_collection = Collection.find(params[:id])
    @collections = current_user.available_collections_for_select
    current_collection_id = @collections.find_index([current_collection.name, current_collection.id])

    @selected = @collections[current_collection_id]
    @study_session = current_user.study_sessions.build
    render 'study_sessions/new'
  end

  def create
    @collection = current_user.collections.create(collection_params)
    @collection.image.attach(params[:collection][:image])
    redirect_to @collection
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :image)
  end
end
