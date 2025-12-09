require 'remote_dataset/csv/soda3'

module Etl
  module Tasks
    module Sources
      class CsvSoda3Source
        attr_reader :csv_soda3_url

        # https://github.com/thbar/kiba/wiki/Implementing-ETL-sources
        def initialize(remote_url:)
          @csv_soda3_url = remote_url
        end

        def each
          csv = RemoteDataset::Csv::Soda3.new(remote_url: csv_soda3_url)

          csv.each do |row|
            yield(row.to_hash)
          end
        end
      end
    end
  end
end