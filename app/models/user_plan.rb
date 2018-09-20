class UserPlan < ApplicationRecord
  validates_presence_of :auto_pay, :guest_id

  has_many :user_lines

  after_initialize :set_defaults

  def set_defaults
    self.military_pricing ||= false
    self.senior_pricing ||= false
  end
  
  accepts_nested_attributes_for :user_lines,
                                allow_destroy: true,
                                reject_if: lambda { |attrs|
                                          (attrs['data_amount'].blank? ||
                                            attrs['hotspot'].blank? ||
                                            attrs['hd_video'].blank?)
                                          }, 
                                limit: 10
                              end