class Collection < ApplicationRecord
  scope :internal, -> { where(external: false) }
  scope :external, -> { find_by(external: true) }
  has_many :study_sessions
  belongs_to :user
  has_many :memberships, foreign_key: :participating_collection_id
  has_many :members, through: :memberships

  has_one_attached :image
  validates :image, content_type: { in: %w[image/jpeg image/gif image/png],
                                    message: 'must be a valid image format' },
                    size: { less_than: 5.megabytes,
                            message: 'should be less than 5MB' }


  def display_image
    image.variant(resize_to_limit:[100,100])
  end
end
