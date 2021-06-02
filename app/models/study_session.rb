class StudySession < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  validates :name,presence: true
  validates :duration,presence: true
  validates :duration_start,presence: true
  validates :duration_end,presence: true
  belongs_to :author, class_name: :User
  belongs_to :collection
  has_many :collaborations
  has_many :participants, through: :collaborations
  scope :total, -> { sum(:duration) }
end
