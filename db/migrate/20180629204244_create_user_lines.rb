class CreateUserLines < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lines do |t|

      t.timestamps
    end
  end
end
