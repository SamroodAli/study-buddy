class Collaboration < ApplicationRecord
  belongs_to :participant, class_name: :User
  belongs_to :study_session
end
