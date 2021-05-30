class StudySession < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :collaborations
  has_many :participants, through: :collaborations
end
