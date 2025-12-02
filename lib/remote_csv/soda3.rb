require 'open-uri'
require 'csv'

module RemoteCSV
  class Soda3
    def self.build(remote_url)
      username = ENV['SOCRATA_API_KEY_ID']
      password = ENV['SOCRATA_API_KEY_SECRET']
      credentials = Base64.strict_encode64("#{username}:#{password}")
      authorization_header = "Basic #{credentials}"

      CSV.new(
        URI.open(
          remote_url, {
            'Authorization' => authorization_header
        }),
        headers: true,
        header_converters: :symbol
      )
    end
  end
end