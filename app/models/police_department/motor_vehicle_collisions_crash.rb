module PoliceDepartment
  class MotorVehicleCollisionsCrash < ApplicationRecord
    self.table_name = :motor_vehicle_collisions_crashes

    SODA2_API_ENDPOINT = "https://data.cityofnewyork.us/resource/h9gi-nx95.json"
    SODA2_CSV_API_ENDPOINT = "https://data.cityofnewyork.us/resource/h9gi-nx95.csv"

    SODA3_API_ENDPOINT = "https://data.cityofnewyork.us/api/v3/views/h9gi-nx95/query.json"
    SODA3_CSV_API_ENDPOINT = "https://data.cityofnewyork.us/api/v3/views/h9gi-nx95/query.csv"

    def self.url
      "https://data.cityofnewyork.us/Public-Safety/Motor-Vehicle-Collisions-Crashes/h9gi-nx95/about_data"
    end

    def self.name
      "Motor Vehicle Collisions - Crashes"
    end

    def self.description
      "The Motor Vehicle Collisions crash table contains details on the crash event. Each row represents a crash event. The Motor Vehicle Collisions data tables contain information from all police reported motor vehicle collisions in NYC. The police report (MV104-AN) is required to be filled out for collisions where someone is injured or killed, or where there is at least $1000 worth of damage (https://www.nhtsa.gov/sites/nhtsa.dot.gov/files/documents/ny_overlay_mv-104an_rev05_2004.pdf). It should be noted that the data is preliminary and subject to change when the MV-104AN forms are amended based on revised crash details.For the most accurate, up to date statistics on traffic fatalities, please refer to the NYPD Motor Vehicle Collisions page (updated weekly) or Vision Zero View (updated monthly)."
    end

    def self.data_provided_by
      "Police Department (NYPD)"
    end
  end
end
