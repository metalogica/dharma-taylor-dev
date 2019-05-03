# require File.expand_path('../../config/environment', __FILE__)
# require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  # Devise test helpers
  include Warden::Test::Helpers
  Warden.test_mode!

  def self.prepare
      # Add code that needs to be executed before test suite start
  end

  prepare

  def setup
    # Add code that need to be executed before each test
  end

  def teardown
    # Add code that need to be executed after each test
  end
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => { args: %w(headless disable-gpu) + [ 'window-size=1280,800' ] })
  Capybara::Selenium::Driver.new app, browser: :chrome, desired_capabilities: capabilities
end

Capybara.save_path = Rails.root.join('tmp/capybara')
Capybara.javascript_driver = :headless_chrome
