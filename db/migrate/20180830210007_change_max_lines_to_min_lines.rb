class ChangeMaxLinesToMinLines < ActiveRecord::Migration[5.2]
  def change
    rename_column :carrier_plans, :max_lines, :min_lines
  end
end