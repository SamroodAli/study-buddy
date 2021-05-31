class StudySession < ApplicationRecord
  belongs_to :author, class_name: :User
  belongs_to :collection
  has_many :collaborations
  has_many :participants, through: :collaborations
end
