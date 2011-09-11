require 'bundler/setup'

require 'rspec/expectations'
require 'cucumber/formatter/unicode'
require 'capybara/cucumber'

# target url.
Capybara.app_host = 'http://www.google.co.jp'


# test setting
if ENV['BROWSER'] == 'firefox'
  require 'capybara/firebug'
  Capybara.default_driver = :selenium_with_firebug
  Capybara.javascript_driver = :selenium_with_firebug
else
  require 'capybara-webkit'
  Capybara.default_driver = :webkit
  Capybara.javascript_driver = :webkit

  if %w(yes y on).include?(ENV['HEADLESS'])
    puts "use headless."

    require 'headless'
    headless = Headless.new
    headless.start
   
    at_exit do
      headless.destroy
    end
  end

end
Capybara.run_server = false

World(Capybara)
