class Note < ApplicationRecord
  belongs_to :user
  belongs_to :collection, optional: true
  validates :title, presence: true
  validates :content, presence: true
end
