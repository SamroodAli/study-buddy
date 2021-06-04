module CollectionsHelper
  def image_collection(collection)
    image_tag collection.image, class: 'icon session-icon' if collection.image.attached?
  end
end
