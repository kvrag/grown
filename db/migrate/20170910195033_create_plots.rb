class CreatePlots < ActiveRecord::Migration[5.1]
  def change
    create_table :plots do |t|
      t.integer :user_id
      t.integer :plant_id
      t.integer :garden_id

      t.timestamps
    end
  end
end
