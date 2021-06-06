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

  def session_note_button_text(session)
    session.note.blank? ? 'Create note' : 'Update note'
  end
end
