module StudySessionsHelper

  def image(session)
    if session.collection.image.attached?
      image_tag session.collection.image, class:"icon user-icon"
    else
      nil
    end
  end
end

