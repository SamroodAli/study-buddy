class StudySession < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :author, class_name: :User
  belongs_to :collection
  has_many :collaborations
  has_many :participants, through: :collaborations
  scope :total, -> {sum(:duration) }
end
