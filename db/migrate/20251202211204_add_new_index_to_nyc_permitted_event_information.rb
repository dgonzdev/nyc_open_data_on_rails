class AddNewIndexToNycPermittedEventInformation < ActiveRecord::Migration[7.2]
  def change
    add_index :nyc_permitted_event_informations, [:event_id, :start_date_time, :end_date_time], unique: true
  end
end
