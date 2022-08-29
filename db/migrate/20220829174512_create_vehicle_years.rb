class CreateVehicleYears < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_years do |t|
      t.string :name
      t.references :vehicle_make, null: false, foreign_key: true
      t.references :vehicle_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
