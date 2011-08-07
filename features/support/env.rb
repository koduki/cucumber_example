# RSpec
require 'spec/expectations'
require 'cucumber/formatter/unicode'


# Capybara
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/mechanize/cucumber'

Capybara.default_driver = :mechanize
Capybara.javascript_driver = :mechanize
Capybara.app_host = 'http://www.google.co.jp'
Capybara.run_server = false



World(Capybara)
