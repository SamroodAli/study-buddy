class Collection < ApplicationRecord
  scope :internal, -> { where(external: false) }
  scope :external, -> { find_by(external: true) }
  has_many :study_sessions
  belongs_to :user
  has_many :memberships, foreign_key: :participating_collection_id
  has_many :members, through: :memberships

  has_one_attached :image
end
