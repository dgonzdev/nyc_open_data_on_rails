class RemoveIndexOnNycPermittedEventInformation < ActiveRecord::Migration[7.2]
  def change
    remove_index :nyc_permitted_event_informations, :event_id
  end
end
