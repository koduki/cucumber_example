# -*- encoding: UTF-8 -*-

前提 /^(.*)ページを表示している$/ do |path|
  @response = visit "http://www.gooogle.com/#{path}"
end

もし /^"(.*)"ボタンをクリックする$/ do |button|
  @response = click_button(button)
end
