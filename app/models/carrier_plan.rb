class CarrierPlan < ApplicationRecord
  belongs_to :carrier, optional: true
  has_many :carrier_lines
end
