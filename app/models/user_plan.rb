class UserPlan < ApplicationRecord
  has_many :user_lines
  accepts_nested_attributes_for :user_lines,
                                allow_destroy: true,
                                reject_if: lambda { |attrs|
                                          (attrs['data_amount'].blank? ||
                                            attrs['hotspot'].blank? ||
                                            attrs['hd_video'].blank?)
                                          }
                              end
