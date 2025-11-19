require 'open-uri'
require 'csv'

class NycPermittedEventInformation < ApplicationRecord
  CSV_SODA2_API_ENDPOINT = "https://data.cityofnewyork.us/resource/bkfu-528j.csv"

  # Download
  def self.download_csv_with_soda2
    URI.open(CSV_SODA2_API_ENDPOINT) do |f|
      f.each_line.each_with_index do |line, index|
        next if index == 0

        data = CSV.parse_line(line)

        event_id = data[0]
        event_name = data[1]
        start_date_time = data[2]
        end_date_time = data[3]
        event_agency = data[4]
        event_type = data[5]
        event_borough = data[6]
        event_location = data[7]
        event_street_side = data[8]
        street_closure_type = data[9]
        community_board = data[10]
        police_precinct = data[11]

        next if NycPermittedEventInformation.find_by(event_id: event_id).present?

        NycPermittedEventInformation.create!(
          event_id: event_id,
          event_name: event_name,
          start_date_time: start_date_time,
          end_date_time: end_date_time,
          event_agency: event_agency,
          event_type: event_type,
          event_borough: event_borough,
          event_location: event_location,
          event_street_side: event_street_side,
          street_closure_type: street_closure_type,
          community_board: community_board,
          police_precinct: police_precinct
        )
      end
    end
  end
end