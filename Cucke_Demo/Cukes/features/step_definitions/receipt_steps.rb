Given(/^I am in the receipt page$/) do
  visit_page(ReceiptPage)
end

When(/^I enter "([^"]*)" dollar for the parts$/) do |parts|
  on_page(ReceiptPage) do |r_page|
    r_page.part_cost = parts
  end
end


When(/^I enter "([^"]*)" dollar for the paint$/) do |paint|
 on_page(ReceiptPage).paint_cost = paint
end


When(/^I enter "([^"]*)" dollar for the labour$/) do |labor|
  on_page(ReceiptPage).labor_cost = labor
end

And(/^I calcualte totals$/) do
  on_page(ReceiptPage).calc
end

Then(/^I should see the tax is calculated as "([^"]*)" dollar$/) do |tax|

  expect(on_page(ReceiptPage).tax).equal?(tax)

end

And(/^the total should be "([^"]*)" dollar$/) do |total|
  expect(on_page(ReceiptPage).total).equal?(total)
end