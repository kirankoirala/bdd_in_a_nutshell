Given(/^I am in google home page$/) do
 visit_page("GooglePage")
end

When(/^I search for "([^"]*)"$/) do |search_text|
  on_page("GooglePage") do |page|
    page.search_box = search_text
    page.search
  end
end

Then(/^"([^"]*)" appears in the search result$/) do |search_text|
  on_page("GooglePage") do |page|
    expect(page.text.include?(search_text)).to be (true)
  end
end
