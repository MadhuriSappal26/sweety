require 'pry'
require 'rubygems'
require 'rspec'
#require 'cucumber-html-reporter'
class Levels
def initialize(driver)
@driver = driver
end

def clickLevels
@levels_menu=@driver.find_element(:xpath => "//ul//li//a[@href='/entries']")
@levels_menu.click
sleep(5)
end

def clickAddNew
@levelsaddnew=@driver.find_element(:xpath => "//a[contains(text(),'Add new')]")
@levelsaddnew.click
sleep(5)
end

def validatelevel(level)
@levelvalidatemessage=@driver.find_element(:xpath => "//div[@id='page-content-wrapper']//div//div[@class='alert alert-info']").text
@levelvalidatemessage.should == level
end

def enterlevel(entry)
  @inputlevel=@driver.find_element(:id => 'entry_level')
  @inputlevel.send_keys entry
  sleep(6)
end

def clicksubmit
@buttonsubmit=@driver.find_element(:xpath => "//input[@type='submit']")
@buttonsubmit.click
end

def validatesuccess(success)
@validatesuccessmessage=@driver.find_element(:xpath => "//div[@id='page-content-wrapper']//div[@class='alert alert-info fade in']").text
@validatesuccessmessage.should == success
end

def entermaxlevel(entrymax)
  @inputmaxlevel=@driver.find_element(:id => 'entry_level')
  @inputmaxlevel.send_keys entrymax
  sleep(6)
end

def validateunsuccess(unsuccess)
@validateunsuccess=@driver.find_element(:xpath => "//div[@id='page-content-wrapper']//div[@class='alert alert-warning fade in']").text
@validateunsuccess.should == unsuccess
end

def validatemaxlimit(unsuccessmaxlimit)
@validatemax=@driver.find_element(:xpath => "//div[@class='dialog']//p").text
end
end
