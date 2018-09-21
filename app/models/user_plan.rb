class UserPlan < ApplicationRecord
  validates_presence_of :auto_pay, :guest_id, :user_lines

  validate :check_line_count

  has_many :user_lines

  after_initialize :set_defaults

  def set_defaults
    self.military_pricing ||= false
    self.senior_pricing ||= false
  end
  
  def check_line_count
    if self.user_lines.reject(&:marked_for_destruction?).count > 10
      self.errors.add :base, "No more than 10 lines are allowed"
    end
  end

  accepts_nested_attributes_for :user_lines,
    allow_destroy: true
  end