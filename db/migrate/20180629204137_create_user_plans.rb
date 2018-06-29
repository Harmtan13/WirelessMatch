class CreateUserPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :user_plans do |t|
      t.integer :line_quantity
      t.boolean :auto_pay
      t.boolean :senior_pricing
      t.boolean :military_pricing

      t.timestamps
    end
  end
end
