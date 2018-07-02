class CreateCarrierPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :carrier_plans do |t|
      t.string :name
      t.float :data_amount
      t.decimal :data_price

      t.timestamps
    end
  end
end
