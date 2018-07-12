class AddFeaturesToPlansAndLines < ActiveRecord::Migration[5.2]
  def change
    add_column :carrier_plans, :hotspot, :float
    add_column :carrier_plans, :hd_video, :boolean

    add_column :user_lines, :data_amount, :float
    add_column :user_lines, :hotspot, :float
    add_column :user_lines, :hd_video, :float
  end
end
