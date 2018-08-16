class AddSoftCapToUserForm < ActiveRecord::Migration[5.2]
  def change
    add_column :user_lines, :soft_cap, :float
  end
end
