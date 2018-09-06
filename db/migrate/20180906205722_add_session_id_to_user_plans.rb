class AddSessionIdToUserPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :user_plans, :guest_id, :text
  end
end
