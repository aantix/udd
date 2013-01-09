require "bundler/setup"

require 'factory_girl'
require 'rspec'
require 'spork'
require 'rails'
require 'turkee'
require 'active_record'
require 'rake'

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

  FactoryGirl.find_definitions

  RSpec.configure do |config|
    # == Mock Framework
    # 
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    # config.mock_with :rspec

    #config.fixture_path = "#{::Rails.root}/spec/fixtures"

    # If you're not using ActiveRecord, or you'd prefer not to run each of your
    # examples within a transaction, comment the following line or assign false
    # instead of true.
    #config.use_transactional_fixtures = true
  end

end

Spork.each_run do
  $LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
  Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| require f}
end