class CarrierLine < ApplicationRecord
  belongs_to :carrier_line, optional: true
end