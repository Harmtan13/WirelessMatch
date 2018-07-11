class DeletLineRequirementsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :line_requirements
  end
end
