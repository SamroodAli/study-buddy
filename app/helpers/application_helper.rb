require 'dotiw'

module ApplicationHelper
  include ActionView::Helpers::DateHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::NumberHelper

  def time(input)
    return DateTime.now if input.blank?

    DateTime.parse(input)
  end

  def calc_duration(duration_start, duration_end)
    return false if duration_start > duration_end

    hours = duration_end.hour - duration_start.hour
    min = duration_end.minute - duration_start.minute
    min += hours * 60
    min * 60
  end

  def new_page?
    request.url.include?('new') || request.url.include?('edit') || request.url.include?('study_sessions/')
  end

  def fab_class
    new_page? ? 'new-page' : ''
  end
end
