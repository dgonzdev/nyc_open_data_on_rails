class CreateMotorVehicleCollisionsCrashes < ActiveRecord::Migration[7.2]
  def change
    create_table :motor_vehicle_collisions_crashes do |t|
      t.datetime :crash_date
      t.datetime :crash_time
      t.string :borough
      t.string :zipcode
      t.decimal :latitude
      t.decimal :longitude
      t.string :on_street_name
      t.string :cross_street_name
      t.string :off_street_name
      t.integer :number_of_persons_injured
      t.integer :number_of_persons_killed
      t.integer :number_of_pedestrians_injured
      t.integer :number_of_pedestrians_killed
      t.integer :number_of_cyclist_injured

      t.timestamps
    end
  end
end
