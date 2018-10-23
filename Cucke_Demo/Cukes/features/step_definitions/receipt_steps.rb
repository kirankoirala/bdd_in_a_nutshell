require 'watir'
require 'rspec'

# browser = Watir::Browser.new

Given(/^I am in the receipt page$/) do
  @browser.goto("http://localhost:55556/")
end

When(/^I enter "([^"]*)" dollar for the parts$/) do |parts|
  @browser.text_field(:id, 'part').value = parts
end


When(/^I enter "([^"]*)" dollar for the paint$/) do |parts|
  @browser.text_field(:id, 'paint').value = parts
end


When(/^I enter "([^"]*)" dollar for the labour$/) do |parts|
  @browser.text_field(:id, 'labour').value = parts
end

And(/^I calcualte totals$/) do
  @browser.button(:id, 'calculate').click
end

Then(/^I should see the tax is calculated as "([^"]*)" dollar$/) do |tax|

  expect(@browser.label(:id, 'tax').text).equal?(tax)

end

And(/^the total should be "([^"]*)" dollar$/) do |total|
  expect(@browser.label(:id, 'total').text).equal?(total)
end