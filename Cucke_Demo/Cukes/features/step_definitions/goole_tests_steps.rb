require 'watir'
require 'rspec'

browser = Watir::Browser.new :chrome

Given(/^I am in Google home page$/) do
  browser.goto"https://www.google.com"
end

When(/^I search for "([^"]*)"$/) do |search_text|
  browser.text_field(:id, 'lst-ib').value = search_text
  sleep 1
  browser.button(:class, 'lsb').click
end

Then(/^I should see "([^"]*)" in the result page$/) do |result_text|
  expect(browser.text.include?(result_text)).to be true
end