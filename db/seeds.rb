# Data found here: https://github.com/abhionlyone/us-car-models-data
require "csv"

Dir.glob("#{Rails.root}/db/seed_data/*.csv") do |file|
  next if file == '.' or file == '..'

  CSV.read(file, headers: true).each do |row|
    make = VehicleMake.find_or_create_by!(name: row["make"])
    model = make.vehicle_models.find_or_create_by!(name: row["model"], vehicle_make: make)
    year = VehicleYear.find_or_create_by!(name: row["year"], vehicle_model: model, vehicle_make: make)
  end
end
