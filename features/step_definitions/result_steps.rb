# -*- coding: utf-8 -*-

ならば /^"(.*)"と表示されている$/ do |text|
  page.should have_content(text)
end

ならば /^"(.*)"とタイトルが表示されている$/ do |text|
  page.should have_xpath('.//title', :text => text)
end

ならば /^画像:"(.*)"が表示されている$/ do |text|
  page.should have_xpath(".//img[@src='#{text}']")
end

ならば /^LOGOが表示されている$/ do
  page.should have_xpath("id('logo')")
end

ならば /^"(.*)"と表示されていない$/ do |text|
  page.should_not have_content(text)
end
 
ならば /画面エビデンスを撮る/ do
  if page.driver.class == "Capybara::Selenium::Driver"
    wait_until do
        page.driver.browser.save_screenshot(ss_path)
    end
  end
end

