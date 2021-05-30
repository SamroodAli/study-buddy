class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sessions
  has_many :groups
  has_many :collaborations, foreign_key: :participant_id
  has_many :collaborative_sessions, through: :collaborations, source: :session
  has_many :memberships, foreign_key: :member_id
  has_many :participating_groups, through: :memberships
end
