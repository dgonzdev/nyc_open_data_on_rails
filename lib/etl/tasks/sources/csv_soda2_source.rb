require 'remote_dataset/csv/soda2'

module Etl
  module Tasks
    module Sources
      class CsvSoda2Source
        attr_reader :csv_soda2_url

        # https://github.com/thbar/kiba/wiki/Implementing-ETL-sources
        def initialize(remote_url:)
          @csv_soda2_url = remote_url
        end

        def each
          csv = RemoteDataset::Csv::Soda2.new(remote_url: csv_soda2_url)

          csv.each do |row|
            yield(row.to_hash)
          end
        end
      end
    end
  end
end