module StudySessionsHelper
  def image(session)
    image_tag session.collection.image, class: 'icon user-icon' if session.collection.image.attached?
  end

  def duration(study_session)
    "Total duration : #{distance_of_time_in_words(study_session.duration)}"
  end
end
