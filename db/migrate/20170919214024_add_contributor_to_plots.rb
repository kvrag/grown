class AddContributorToPlots < ActiveRecord::Migration[5.1]
  def change
    add_column :plots, :contributor_id, :integer
  end
end
