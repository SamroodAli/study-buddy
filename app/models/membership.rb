class Membership < ApplicationRecord
  belongs_to :participating_collection, class_name: :Collection
  belongs_to :member, class_name: :User
end
