class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name, null: false  
      t.string :variety, null: false
      t.float :planting_depth, null: false
      t.string :season, null: false
      t.integer :days_to_germination, null: false
      t.integer :soil_temp, null: false
      t.integer :days_to_maturity, null: false
      t.boolean :cold_resistant, null: false
      t.string :fertilization, null: false
      t.integer :watering_id, null: false

      t.timestamps
    end
  end
end
