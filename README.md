cucumber-example
================
non rails apps BDD Test example.

slenium(IE, firefox, chrome) and headress-webkit support.

Init
---------------
### capybara-webkit install
https://github.com/thoughtbot/capybara-webkit/wiki/Installing-QT

### chrome-webdriver install
http://code.google.com/p/selenium/wiki/ChromeDriver

### gems install:
    gem install bundler cucumber
    bundle

Run
--------------
### default(akephalos)
    cucumber
### default(headless-webkit)
    cucumber -p webkit
### selenium/firefox
    cucumber -p firefox
### selenium/IE
    cucumber -p IE
### selenium/chrome
    cucumber -p chrome
