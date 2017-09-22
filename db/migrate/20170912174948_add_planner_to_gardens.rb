class AddPlannerToGardens < ActiveRecord::Migration[5.1]
  def change
    add_column :gardens, :planner_id, :integer
  end
end
