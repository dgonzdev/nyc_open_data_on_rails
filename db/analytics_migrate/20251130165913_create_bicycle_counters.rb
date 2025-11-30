class CreateBicycleCounters < ActiveRecord::Migration[7.2]
  def change
    create_table :bicycle_counters do |t|
      t.integer :original_id
      t.text :name
      t.text :domain
      t.decimal :latitude, precision: 15, scale: 10
      t.decimal :longitude, precision: 15, scale: 10
      t.integer :interval
      t.text :timezone
      t.text :sens
      t.text :counter

      t.timestamps
    end
  end
end
