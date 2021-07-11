# frozen_string_literal: true



require 'capybara/rspec'
require 'require_all'
require 'selenium-webdriver'
require 'site_prism'
require 'dotenv/load'

$LOAD_PATH << File.join(File.dirname(__FILE__), '../')

# require_all 'page_objects/sections/'
require_all 'page_objects/pages/'

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1200,1000])
end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

# SitePrism.configure do |config|
#   config.use_implicit_waits = true
# end
