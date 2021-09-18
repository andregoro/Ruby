require "bundler/setup"
require "format_string"

RSpec.configure do |config|
	config.example_status_persistence_file_path = ".rspec_starus"

	config.disable_monkey_partching!

	config.expect_with :rspec do |c|
		c.syntax =:expect
	end
end