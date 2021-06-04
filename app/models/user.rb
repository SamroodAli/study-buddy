class User < ApplicationRecord
  has_many :study_sessions, foreign_key: :author_id, class_name: :StudySession
  has_many :collections
  has_many :collaborations, foreign_key: :participant_id
  has_many :collaborative_sessions, through: :collaborations, source: :study_session
  has_many :memberships, foreign_key: :member_id
  has_many :participating_collections, through: :memberships

  attr_accessor :remember_token

  before_save { email.downcase! } # same as self.email = self.email.downcase or self.email = email.downcase
  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

  class << self
    def digest(string)
      cost = if ActiveModel::SecurePassword.min_cost
               BCrypt::Engine::MIN_COST
             else
               BCrypt::Engine.cost
             end
      BCrypt::Password.create(string, cost: cost)
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
    remember_digest
  end

  def authenticated?(remember_token)
    return false unless remember_digest

    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def session_token
    remember_digest || remember
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  def available_collections
    [collections.my_external] + Collection.internal
  end

  def available_collections_for_select
    available_collections.map { |collection| [collection.name, collection.id] }
  end
end
