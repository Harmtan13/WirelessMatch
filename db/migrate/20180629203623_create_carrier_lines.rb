class CreateCarrierLines < ActiveRecord::Migration[5.2]
  def change
    create_table :carrier_lines do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
