# RSpec
require 'rspec/expectations'
require 'cucumber/formatter/unicode'


# Capybara
require 'bundler/setup'
require 'capybara/cucumber'
require 'capybara-webkit'

Capybara.default_driver = :webkit
Capybara.javascript_driver = :webkit
Capybara.app_host = 'http://www.google.co.jp'
Capybara.run_server = false


if %w(yes y on).include?(ENV['HEADLESS'])
  require 'headless'
 
  headless = Headless.new
  headless.start
 
  at_exit do
    headless.destroy
  end
end

World(Capybara)
