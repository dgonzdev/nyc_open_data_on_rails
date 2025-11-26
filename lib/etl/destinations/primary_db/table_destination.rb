module Etl
  module Destinations
    module PrimaryDb
      class TableDestination
        attr_reader :model

        # https://github.com/thbar/kiba/wiki/Implementing-ETL-destinations
        def initialize(model)
          @model = model
        end

        def write(row)
          model.create!(
            original_id: row[:id],
            name: row[:name],
            domain: row[:domain],
            latitude: row[:latitude],
            longitude: row[:longitude],
            interval: row[:interval],
            timezone: row[:timezone],
            sens: row[:sens],
            counter: row[:counter]
          )
        end
      end
    end
  end
end