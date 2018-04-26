Given(/^I navigate to Google\.com$/) do
  Selenium::WebDriver::Chrome.driver_path="~/webdrivers/chromedriver"

  @browser = Selenium::WebDriver.for :Chrome
  @browser.get('http://www.google.com')
end

Then(/^I should be on the Google\.com search page$/) do
  expect(@browser.page_source.include?('google')).to be_truthy
  @browser.quit
end

