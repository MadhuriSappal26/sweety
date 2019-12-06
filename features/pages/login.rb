require 'pry'
require 'rubygems'
require 'rspec'
#require 'cucumber-html-reporter'

class Login
  def initialize(driver)
    @driver = driver
    @txtUsername=@driver.find_element(:id,'user_email')
    @txtPassword=@driver.find_element(:id,'user_password')
    @clickLogin=@driver.find_element(:name,'commit')
    @menuLevels=@driver.find_element(:xpath => "//ul//li//a[@href='/entries']")
    @menuReports=@driver.find_element(:xpath => "//ul//li//a[@href='/report']")
  end

  def enterUsername(username)
  @txtUsername.send_keys username
end


def enterPassword(pass)
  @txtPassword.send_keys pass
end

def clickLogin

  @clickLogin.click
end

def verifywelcomemessage(message)
  @verifymessage=@driver.find_element(:xpath =>"//div[@id='page-content-wrapper']//div//div").text
  puts @verifymessage
  @verifymessage.should == message
  puts "Test passed"
end

def invalidmessage(invalidmessage)
@verifyinvalidmessage=@driver.find_element(:xpath =>"//div[@id='page-content-wrapper']//div//div").text
puts @verifyinvalidmessage
@verifyinvalidmessage.should == invalidmessage
end

def validation(validate)
@verifyvalidmessage=@driver.find_element(:xpath =>"//div[@id='page-content-wrapper']//div//div").text
@verifyvalidmessage.should == validate
end

def validemail(email)
@txtUsername.send_keys email
end

def invalidpassword(pass)
@txtPassword.send_keys pass
end

def levels
@menuLevels.click
end

def levelvalidate(lvalidate)
@verifylevelvalidate=@driver.find_element(:xpath =>"//div[@id='page-content-wrapper']//div//div").text
@verifylevelvalidate.should == lvalidate
end

def reports
@menuReports.click
end

def levelvalidate(lvalidate)
@verifylevelvalidate=@driver.find_element(:xpath =>"//div[@id='page-content-wrapper']//div//div").text
@verifylevelvalidate.should == lvalidate
end

def reportvalidate(rvalidate)
@verifyreportvalidate=@driver.find_element(:xpath =>"//div[@id='page-content-wrapper']//div//div").text
@verifyreportvalidate.should == rvalidate
end

end
