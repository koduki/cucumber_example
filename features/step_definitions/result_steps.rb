# -*- encoding: UTF-8 -*-
 
ならば /^"(.*)"と表示される$/ do |text|
  response_body.to_s.force_encoding("UTF-8").should =~ /#{text}/m
end
 
ならば /^"(.*)"と表示されない$/ do |text|
  response_body.to_s.force_encoding("UTF-8").should_not =~ /#{text}/m
end
 
ならば /^(\w+)メッセージが表示さる$/ do |message_type|
  @response.should have_xpath("//*[@class='#{message_type}']")
end
 
ならば /^(.*)リクエストが失敗する/ do |_|
  @response.should_not be_successful
end
 
ならば /ページ読み込みが成功する/ do
  @response.code.should == "200"
end