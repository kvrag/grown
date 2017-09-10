class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name 
      t.string :variety
      t.float :planting_depth
      t.string :season
      t.integer :days_to_germination
      t.integer :soil_temp
      t.integer :days_to_maturity
      t.boolean :cold_resistant
      t.string :fertilization
      t.integer :watering_id

      t.timestamps
    end
  end
end
