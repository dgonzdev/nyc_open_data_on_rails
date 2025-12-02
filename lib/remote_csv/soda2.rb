require 'open-uri'
require 'csv'

module RemoteCSV
  class Soda2
    def self.build(remote_url)
      CSV.new(
        URI.open(remote_url),
        headers: true,
        header_converters: :symbol
      )
    end
  end
end