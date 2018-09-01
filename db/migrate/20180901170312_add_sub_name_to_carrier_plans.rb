class AddSubNameToCarrierPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :carrier_plans, :plan_type, :string
  end
end
