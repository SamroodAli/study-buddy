class Collaboration < ApplicationRecord
  belongs_to :participant, class_name: :User
  belongs_to :session
end
