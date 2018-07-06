class CarrierLine < ApplicationRecord
  belongs_to :carrier_plan, optional: true
end