class UserLine < ApplicationRecord
  belongs_to :user_plan, optional: true
end
