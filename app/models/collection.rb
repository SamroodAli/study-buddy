class Collection < ApplicationRecord
  has_many :study_sessions
  belongs_to :user
  has_many :memberships, foreign_key: :participating_collection_id
  has_many :members, through: :memberships
end
