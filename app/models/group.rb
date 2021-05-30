class Group < ApplicationRecord
  has_many :sessions
  belongs_to :user
  has_many :memberships, foreign_key: :participating_group_id
  has_many :members, through: :memberships
end
