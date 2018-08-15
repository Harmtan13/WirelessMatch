class AddMixAndMatchAndMatchIdsToPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :carrier_plans, :mix_and_match, :boolean
    add_column :carrier_plans, :match_id, :integer
  end
end
