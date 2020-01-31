# Rotw

Overview: This is a gem that will display reports from Report of the Week. It connects to the API (Report of the Week), and it takes a JSON response, then takes it and passes that through to the make_report method to store created objects to the `@@all` array. Then when the user enters the 'list' option, after selecting to view, a menu of the latest reports are displayed, and then user has an option to view all of the ratings, and manufacturers from that object.

## Installation

require "bundler"
require "rest-client"
require "json"
require "require_all"
require "pry"
require "tty-prompt"

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rotw

## Usage

Clone the following repo: https://github.com/Ceyvion/ROTWProject then cd into 'rotw', then cd into './lib/rotw' folder.

To run this application just type ./bin/run_rotw from the "rotw" folder.

Follow the instructions to the screen prompts to use the application.



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/rotw` for an interactive prompt that will allow you to start the CLI for Report of the Week.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ceyvion/ROTWProject.

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.  “Data provided by Report of the Week” https://thereportoftheweek-api.herokuapp.com/reports?between=2018-1-1|2018-2-1, attribution for all live quotes <a href=“https://thereportoftheweek-api.herokuapp.com/reports?between=2018-1-1|2018-2-1”>Report of the Week</a>


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

Everyone interacting in the Report of the Week. project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Ceyvion/ROTWProject/blob/master/CODE_OF_CONDUCT.md)
# ROTWProject
