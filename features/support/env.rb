# RSpec
require 'rspec/expectations'
require 'cucumber/formatter/unicode'


# Capybara
require 'bundler/setup'
require 'capybara/cucumber'
require 'capybara-webkit'
require 'capybara/firebug'


Capybara.default_driver = :selenium_with_firebug
Capybara.javascript_driver = :selenium_with_firebug
#Capybara.default_driver = :webkit
#Capybara.javascript_driver = :webkit


Capybara.app_host = 'http://www.google.co.jp'
Capybara.run_server = false

=begin
if %w(yes y on).include?(ENV['HEADLESS'])
  require 'headless'
 
  headless = Headless.new
  headless.start
 
  at_exit do
    headless.destroy
  end
end
=end

World(Capybara)
