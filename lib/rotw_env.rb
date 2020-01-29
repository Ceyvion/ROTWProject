require "bundler/setup"
require "rotw/version"
require "pry"
require "json"
require "rest-client"

require_relative "./rotw/api.rb"
require_relative "./rotw/cli.rb"
require_relative "./rotw/report.rb"


module Rotw
  class Error < StandardError; end
  # Your code goes here...
end
