# -*- encoding: UTF-8 -*-

ならば /^"(.*)"と表示される$/ do |text|
  response_body.to_s.force_encoding("UTF-8").should =~ /#{text}/m
end

ならば /^"(.*)"と表示されない$/ do |text|
  response_body.to_s.force_encoding("UTF-8").should_not =~ /#{text}/m
end
