require 'selenium-webdriver'
require 'report_builder'

caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_options => {detach: true})
browser=Selenium::WebDriver.for :chrome , desired_capabilities: caps

Before do |scenario|
@browser=browser
end

at_exit do
ReportBuilder.configure do |config|
      config.input_path = 'reports'
      config.html_report_path = 'my_test_report'
      config.report_types = [:retry, :html]
      config.report_title = 'My Test Results'
      config.additional_info = {browser: 'Chrome', environment: 'Stage 5'}
    end
    ReportBuilder.build_report
  end
