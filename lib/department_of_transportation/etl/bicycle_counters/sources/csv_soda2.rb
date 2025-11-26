require 'open-uri'
require 'csv'

module DepartmentOfTransportation
  module Etl
    module BicycleCounters
      module Sources
        class CsvSoda2
          attr_reader :api_endpoint

          def initialize(api_endpoint)
            @api_endpoint = api_endpoint
          end

          def each
            CSV.new(
              URI.open(api_endpoint),
              headers: true,
              header_converters: :symbol
            ).each do |row|
              yield(row.to_hash)
            end
          end
        end
      end
    end
  end
end