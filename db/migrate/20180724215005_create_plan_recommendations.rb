class CreatePlanRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_recommendations do |t|

      t.timestamps
    end
  end
end
