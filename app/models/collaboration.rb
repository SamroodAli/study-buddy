class Collaboration < ApplicationRecord
  belongs_to :participant,class_name: :User
  belongs_to :topic, class_name: :Session
end
