require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
#require 'cucumber-html-reporter'

Given(/^User Clicks on Levels menu$/) do
  @levels =Levels.new(@browser)
  @levels.clickLevels
end

When(/^User Clicks on Add New button$/) do
@levels.clickAddNew
end

Then(/^User validate message as "([^"]*)"$/) do |msg|
@levels.validatelevel(msg)
end

When(/^User enters level entry as (-?\d+)$/) do |msg1|
@levels =Levels.new(@browser)
@levels.enterlevel(msg1)
end

When(/^Click on Submit button$/) do
  @levels.clicksubmit
end

Then(/^validate  successful message as "([^"]*)"$/) do |msg2|
  @levels.validatesuccess(msg2)
end

When(/^User entered level entry as "([^"]*)"$/) do |msg3|
  @levels =Levels.new(@browser)
  @levels.entermaxlevel(msg3)
end

When(/^Clicks on Submit button$/) do
  @levels.clicksubmit
end

Then(/^validate  unsuccessful message as "([^"]*)"$/) do |msg4|
@levels.validateunsuccess(msg4)
end
