class StudySession < ApplicationRecord
  scope :recent, -> { order(created_at: :desc) }
  scope :ancient, -> { order(created_at: :asc) }
  validates :name, presence: true
  validates :duration, presence: true
  validates :duration_start, presence: true
  validates :duration_end, presence: true
  belongs_to :author, class_name: :User
  belongs_to :collection
  has_many :collaborations
  has_many :participants, through: :collaborations
  scope :total, -> { sum(:duration) }

  def internal?
    collection.external == false
  end

  def collection_name
    internal? ? "Collection: #{collection.name}" : ''
  end
end
