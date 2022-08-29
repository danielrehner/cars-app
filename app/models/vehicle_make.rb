class VehicleMake < ApplicationRecord
    has_many :vehicle_models
    has_many :vehicle_years
end
