require "bundler/setup"
require "ytrbium"

Dir[File.expand_path("../support/*.rb", __FILE__)].each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.extend ExpectTemplate
end

module RSpec::Matchers
  # Enable use of expects like `it { expects(...).to eq(...) }`
  alias_method :expects, :expect
end
