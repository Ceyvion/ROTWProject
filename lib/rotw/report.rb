require "pry"
class Report

attr_accessor :product, :rating, :manufacturer

@@all = []
# binding.pry
#the job of init is to add attributes and save exatcly one instance of report
  def initialize(attributes_hash)
    attributes_hash.each  {|k, v| self.send(("#{k}="), v) if self.respond_to? ("#{k}=")}
    self.save
  end # of initialize
# binding.pry
  def self.make_reports(array_of_attr_hashes)
    array_of_attr_hashes.each do |report_hash|
      Report.new(report_hash)
    end
    # binding.pry
  end # of make_report

 # # iterate through your array of hashes
# each hash contains the information you need
# but you can't just pass it raw to Report.new because
#of the camelCasing
# so for each info hash you'll need to build a hash with the correct keys to send to your Report.new method


    # binding.pry
  def self.all
      @@all
  end # of self.all

  def save
    @@all << self
  end # of save

end # of class
