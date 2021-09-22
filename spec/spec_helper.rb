
require 'simplecov'
require 'webmock/rspec'
require 'database_cleaner/active_record'
require 'rails-controller-testing'

SimpleCov.start 
Rails::Controller::Testing.install

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|

  config.before :suite do
    DatabaseCleaner.clean_with :truncation
    Rails.application.load_seed
  end

  config.after(:suite) do
    DatabaseCleaner.clean
  end

  config.before(:each) do
    DatabaseCleaner.start
  end
  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
