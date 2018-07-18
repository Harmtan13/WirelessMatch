class Carrier < ApplicationRecord
  has_many :carrier_plans
  accepts_nested_attributes_for :carrier_plans, 
                                reject_if: lambda { |attrs|
                                           (attrs['name'].blank? ||
                                            attrs['data_amount'].blank? ||
                                            attrs['data_price'].blank?)
                                          }

end