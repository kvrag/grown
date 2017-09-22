require 'csv'

regularly = Watering.create(frequency: "Regularly")
weekly = Watering.create(frequency: "Weekly")
harvest = Watering.create(frequency: "Close to harvest")
drought = Watering.create(frequency: "Only in drought")


CSV.foreach('db/veg_data.csv', headers:true, header_converters: :symbol) do |row|
  p "*" * 50
  p row
  Plant.create(row.to_h)
end
