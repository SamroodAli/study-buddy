module StudySessionsHelper
  def image(session)
    image_tag session.collection.image, class: 'session-icon icon user-icon' if session.collection.image.attached?
  end

  def duration(study_session)
    "Total duration : #{distance_of_time_in_words(study_session.duration)}"
  end

  def collections_page?
    request.url.include?('collections')
  end

  def sessions_page?
    url = request.url
    url.include?('sessions') && !url.include?('no_sort')
  end
end
