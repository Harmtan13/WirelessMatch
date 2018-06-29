class AddPlansAndLinesReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :carrier_plans, :carrier, foreign_key: true
    add_reference :carrier_lines, :carrier_plan, foreign_key: true
  end
end
