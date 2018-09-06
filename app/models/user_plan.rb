class UserPlan < ApplicationRecord
  has_many :user_lines
  accepts_nested_attributes_for :user_lines, 
  reject_if: lambda { |attrs|
             (attrs['data_amount'].blank? ||
              attrs['hotspot'].blank? ||
              attrs['hd_video'].blank?)
            }

  def set_guest_id
    self.guest_id ||= session[:session_id]
  end
end
