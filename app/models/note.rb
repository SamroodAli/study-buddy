class Note < ApplicationRecord
  belongs_to :user
  belongs_to :collection, optional: true
  validates :content, presence: true
end
