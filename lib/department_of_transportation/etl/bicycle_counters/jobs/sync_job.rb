module DepartmentOfTransportation
  module Etl
    module BicycleCounters
      module Jobs
        module SyncJob
          module_function
          
          def setup(config)
            Kiba.parse do
              # called only once per run
              # pre_process do
                # ...
              # end

              # responsible for reading the data
              source Sources::CSVSoda2, BicycleCounter::CSV_SODA2_API_ENDPOINT

              # then transforming it
              # transform SomeTransform, transform_config...
              # transform SomeOtherTransform, transform_config...

              # alternate block form
              # transform do |row|
                # return row, modified
              # end

              # destination SomeDestination, destination_config...

              # a final block which will be called only if the pipeline succeeded
              # post_process do
                # ...
              # end
            end
          end
        end
      end
    end
  end
end