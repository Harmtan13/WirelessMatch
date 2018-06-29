class CreateParentChildReferenceForUserPlanLineRequirements < ActiveRecord::Migration[5.2]
  def change
      add_reference :user_lines, :user_plan, foreign_key: true
      add_reference :line_requirements, :user_line, foreign_key: true
  end
end
