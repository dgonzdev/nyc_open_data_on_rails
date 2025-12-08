require 'open-uri'
require 'net/http'
require 'csv'

module RemoteDataset
  module Csv
    class Soda3
      attr_reader :remote_url
      attr_reader :page_number
      attr_reader :page_size

      def initialize(remote_url:, page_number: 1, page_size: 50000)
        @remote_url = remote_url
        @page_number = page_number
        @page_size = page_size
      end

      def each
        _page_number = 1

        response = api_call(_page_number)

        csv = CSV.new(
          response.body,
          headers: true,
          header_converters: :symbol
        )

        while csv.count > 0
          csv.rewind

          csv.each do |row|
            yield row
          end

          _page_number += 1

          response = api_call(_page_number)

          csv = CSV.new(
            response.body,
            headers: true,
            header_converters: :symbol
          )
        end
      end

      private

      def api_call(_page_number)
        username = ENV['SOCRATA_API_KEY_ID']
        password = ENV['SOCRATA_API_KEY_SECRET']
        credentials = Base64.strict_encode64("#{username}:#{password}")
        authorization_header = "Basic #{credentials}"

        uri = URI(remote_url)
        data = {
          "query": "SELECT *",
          "page": {
            "pageNumber": _page_number,
            "pageSize": page_size
          }
        }.to_json
        headers = { 'Authorization' => authorization_header, 'content-type' => 'application/json' }

        Net::HTTP.post(uri, data, headers)
      end
    end
  end
end