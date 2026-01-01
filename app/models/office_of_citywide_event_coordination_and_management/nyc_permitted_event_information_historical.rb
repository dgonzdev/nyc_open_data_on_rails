module OfficeOfCitywideEventCoordinationAndManagement
  class NycPermittedEventInformationHistorical < ApplicationRecord
    self.table_name = :nyc_permitted_event_information_historicals

    SODA2_API_ENDPOINT = "https://data.cityofnewyork.us/resource/bkfu-528j.json"
    SODA2_CSV_API_ENDPOINT = "https://data.cityofnewyork.us/resource/bkfu-528j.csv"

    SODA3_API_ENDPOINT = "https://data.cityofnewyork.us/api/v3/views/bkfu-528j/query.json"
    SODA3_CSV_API_ENDPOINT = "https://data.cityofnewyork.us/api/v3/views/bkfu-528j/query.csv"

    def self.url
      "https://data.cityofnewyork.us/City-Government/NYC-Permitted-Event-Information-Historical/bkfu-528j/about_data"
    end

    def self.name
      "NYC Permitted Event Information - Historical"
    end

    def self.description
      "This list contains information on approved event applications from 2008. Please note that Permitted Film Events only reflect those permits which will impact one or more streets for at least five days."
    end

    def self.data_provided_by
      nil
    end

    # Dataset Information
    def self.agency
      "Office of Citywide Event Coordination and Management (CECM)"
    end

    # Update
    def self.update_frequency
      "As Needed"
    end

    def self.automation
      "Yes"
    end

    def self.date_made_public
      "9/11/2017"
    end

    # Topics
    def self.category
      "City Government"
    end

    def self.tags
      "event, to do, activity, park, block party, festival, nyc permitted event information, otm, office of the mayor"
    end
  end
end