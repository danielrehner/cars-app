class VehicleModel < ApplicationRecord
  belongs_to :vehicle_make
  has_many :vehicle_years
end
