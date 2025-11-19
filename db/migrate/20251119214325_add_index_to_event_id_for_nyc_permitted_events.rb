class AddIndexToEventIdForNycPermittedEvents < ActiveRecord::Migration[7.2]
  def change
    add_index :nyc_permitted_event_informations, :event_id, unique: true
  end
end
