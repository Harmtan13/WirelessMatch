class CarrierPlan < ApplicationRecord
  belongs_to :carrier, optional: true
  has_many :carrier_lines
  accepts_nested_attributes_for :carrier_lines, 
                                reject_if: lambda { |attrs| attrs['price'].blank? }
end
