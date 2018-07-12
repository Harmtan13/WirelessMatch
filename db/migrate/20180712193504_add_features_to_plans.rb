class AddFeaturesToPlans < ActiveRecord::Migration[5.2]
  def change
    rename_column :carrier_plans, :hotspot, :hotspot_lte
    add_column :carrier_plans, :hotspot_3g, :float
    add_column :carrier_plans, :soft_cap, :float
    add_column :carrier_plans, :max_lines, :float
    add_column :carrier_plans, :auto_pay, :decimal
    add_column :carrier_plans, :max_auto_pay, :decimal
  end
end
