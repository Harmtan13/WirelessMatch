class CarrierPlan < ApplicationRecord
  belongs_to :carrier, optional: true
  has_many :carrier_lines
  accepts_nested_attributes_for :carrier_lines, 
                                reject_if: lambda { |attrs| attrs['price'].blank? }

  def data_gb
    if data_amount == Float::INFINITY
      "Unlimited"
    else
      "#{data_amount.to_i}GB"
    end
  end                                
end
