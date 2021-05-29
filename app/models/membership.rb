class Membership < ApplicationRecord
  belongs_to :participating_group, class_name: :Group
  belongs_to :member,class_name: :User
end
