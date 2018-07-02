class UserLine < ApplicationRecord
  belongs_to :user_plan, optional: true
  has_one :line_requirement
end
