require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
#require 'cucumber-html-reporter'
Given(/^User navigates to Login Page$/) do
  @browser.navigate.to("http://damp-sands-8561.herokuapp.com/")
end

When(/^User clicks on Login button$/) do
  @login =Login.new(@browser)
  @login.clickLogin
end

Then(/^System validates with message as "([^"]*)"$/) do |msg1|
@login.invalidmessage(msg1)
end

When(/^User enter email id As "([^"]*)"$/) do |msg2|
@login =Login.new(@browser)
@login.validemail(msg2)

end

When(/^User enter Password As "([^"]*)"$/) do |msg3|
@login.invalidpassword(msg3)
end

When(/^User click on Login button$/) do
@login.clickLogin
end

Then(/^System validate with message as "([^"]*)"$/) do |msg4|
@login.validation(msg4)
end

When(/^User Clicks Levels menu$/) do
@login =Login.new(@browser)
@login.levels
end

Then(/^User see the message as "([^"]*)"$/) do |msg5|
@login.levelvalidate(msg5)
end

When(/^User Clicks Reports menu$/) do
@login =Login.new(@browser)
@login.reports
end

Then(/^User sees the message as "([^"]*)"$/) do |msg6|
@login.reportvalidate(msg6)
end


When(/^I submit username and password$/) do
  @login =Login.new(@browser)
@login.enterUsername("sappalshyna@gmail.com")
@login.enterPassword('codetheoryio')
end


When(/^I click on Login button$/) do
  @login.clickLogin
end

Then(/^I see the message as "([^"]*)"$/) do |arg|
  @login.verifywelcomemessage(arg)
end
