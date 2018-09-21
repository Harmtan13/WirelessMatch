class UserLine < ApplicationRecord 
  validates_presence_of :data_amount, :hotspot

  validates_inclusion_of :hd_video, in: [true, false]

  belongs_to :user_plan, optional: true

  after_initialize :set_guest_id

  def set_guest_id
    self.soft_cap ||= 0
  end
end