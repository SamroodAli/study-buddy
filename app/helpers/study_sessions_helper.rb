module StudySessionsHelper

  def image(session)
    if session.collection.image.attached?
      image_tag session.collection.image, class:"icon user-icon"
    else
      nil
    end
  end

  def duration(study_session)
    "Total duration : " + distance_of_time_in_words(study_session.duration) 
  end
end

