class CarsController < ApplicationController
  def index
    @vehicle_makes = VehicleMake.pluck(:name, :id)
    @selected_make = VehicleMake.find_by(id: params[:make].presence) if params[:make].present?

    @vehicle_models = @selected_make&.vehicle_models&.pluck(:name, :id) || []
    @selected_model = VehicleModel.find_by(id: params[:model].presence) if params[:model].present?

    @vehicle_years = @selected_model&.vehicle_years&.pluck(:name, :id) || []
    @selected_year = VehicleYear.find_by(id: params[:year].presence) if params[:year].present?
  end
end
