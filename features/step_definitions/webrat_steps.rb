# -*- encoding: UTF-8 -*-

前提 /^(.*)ページを表示している$/ do |path|
  @response = visit "http://www.google.co.jp#{path}"
end
 
もし /^(.*)ページを表示する$/ do |path|
  @response = visit "http://www.google.co.jp#{path}"
end
 
もし /^"(.*)"ボタンをクリックする$/ do |button|
  @response = click_button(button)
end

もし /^送信ボタンをクリックする$/ do 
  @response = submit
end

もし /^"(.*)"リンクをクリックする$/ do |link|
  @response = click_link(link)
end

もし /^"(.*)"に"(.*)"と入力する$/ do |field, value|
  @response = fill_in(field, :with => value) 
end
 
もし /^"(.*)"から"(.*)"を選択する$/ do |field, value|
  @response = select(value, :from => field) 
end
 
もし /^"(.*)"をチェックする$/ do |field|
  @response = check(field) 
end
 
もし /^"(.*)"のチェックを外す$/ do |field|
  @response = uncheck(field) 
end
 
もし /^"(.*)"を選択する$/ do |field|
  @response = choose(field)
end
 
もし /^パスが"(.*)"のファイルを"(.*)"に添付する $/ do |path, field|
  @response = attach_file(field, path)
end

#
# domasific define
#
もし /^検索トップをクリックする$/ do 
  @response = find(:xpath, "//h3/a", "EROROR").click
end
