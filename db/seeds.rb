require 'csv'
require_relative 'veg_data'

regularly = Watering.create(frequency: "Regularly")
weekly = Watering.create(frequency: "Weekly")
harvest = Watering.create(frequency: "Close to harvest")
drought = Watering.create(frequency: "Only in drought")


CSV.foreach('veg_data.csv', headers:true, header_converters: :symbol) do |row|
  Plant.create(row.to_h)
end
