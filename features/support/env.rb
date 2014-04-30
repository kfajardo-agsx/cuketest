require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://54.255.147.187'
end

World(Capybara)