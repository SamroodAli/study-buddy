class Group < ApplicationRecord
  has_many :sessions
  belongs_to :user
end
