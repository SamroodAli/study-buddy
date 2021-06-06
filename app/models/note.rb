class Note < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  belongs_to :collection, optional: true
  validates :content, presence: true
end
