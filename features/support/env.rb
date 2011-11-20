require 'bundler/setup'

require 'rspec/expectations'
require 'cucumber/formatter/unicode'
require 'capybara/cucumber'

# test setting
browser_type = ENV['BROWSER'].gsub("'", "")
case browser_type
when "firefox"
  require 'capybara/firebug'
  Capybara.default_driver = :selenium
  Capybara.javascript_driver = :selenium
when "IE"
  require 'selenium-webdriver'
  Capybara.register_driver :selenium_internet_explorer do |app|
    @driver = Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  end
  Capybara.javascript_driver = :selenium_internet_explorer
  Capybara.default_driver = :selenium_internet_explorer
when "chrome"
  require 'selenium-webdriver'
  Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
  Capybara.javascript_driver = :selenium_chrome 
  Capybara.default_driver = :selenium_chrome
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

module ScreenShotHelper
 require 'singleton'   
 require 'fileutils'
 
 class Counter
   include Singleton
   def initialize
     @count = 0
   end
   def get
     @count += 1
   end
 end

 def ss_path
   browser_type = ENV['BROWSER'].gsub("'", "")
   dir = "screenshot/#{browser_type}"
   FileUtils.mkdir_p dir

   path = "#{dir}/#{sprintf "%04d", Counter.instance.get}.png"
   p path
   path
 end
end

World(Capybara, ScreenShotHelper)
