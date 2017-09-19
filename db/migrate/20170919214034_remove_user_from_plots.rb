class RemoveUserFromPlots < ActiveRecord::Migration[5.1]
  def change
    remove_column :plots, :user_id
  end
end
