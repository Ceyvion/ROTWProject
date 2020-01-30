require "pry"
require_relative "Report"
class Api


    #GET /reports?between=2015-1-1|2015-12-1

    # BASE_URL = "https://thereportoftheweek-api.herokuapp.com/reports?between=2018-1-1|2018-2-1"

    def self.get_data
      response = RestClient.get("https://thereportoftheweek-api.herokuapp.com/reports?between=2018-1-1|2018-2-1")

      # puts "goodbye"
      report_array_of_hashes = JSON.parse(response.body)
      Report.make_reports(report_array_of_hashes)
      # reports = Report.new(report_hash)
      #
      # reports
      # binding.pry
    end





end # class

# Api.get_data
