class AddDicountsColumnToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :carrier_plans, :military_pricing, :boolean
    add_column :carrier_plans, :senior_pricing, :boolean
  end
end
