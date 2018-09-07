class UserLine < ApplicationRecord
  belongs_to :user_plan, optional: true

  after_initialize :set_guest_id

  def set_guest_id
    self.soft_cap ||= 0
  end
end
