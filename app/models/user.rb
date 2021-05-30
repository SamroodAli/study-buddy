class User < ApplicationRecord
  has_many :study_sessions
  has_many :groups
  has_many :collaborations, foreign_key: :participant_id
  has_many :collaborative_sessions, through: :collaborations, source: :study_session
  has_many :memberships, foreign_key: :member_id
  has_many :participating_groups, through: :memberships
end
