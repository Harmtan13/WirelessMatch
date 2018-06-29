class HdVideo < ActiveRecord::Migration[5.2]
  def change
    create_table :line_requirements do |t|
      t.boolean :hd_video
      t.float :hotspot_data
      t.float :line_data

      t.timestamps
    end
  end
end
