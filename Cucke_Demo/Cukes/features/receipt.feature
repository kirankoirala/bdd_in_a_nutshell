Feature: Sum up all
  In order to receive correct payment from the customer
  As a cash counter person
  I want to make sure that tax and total are calculated correctly

  Scenario: Calculate tax and total correctly
    Given I am in the receipt page
    When I enter "40" dollar for the parts
    And I enter "30" dollar for the paint
    And I enter "30" dollar for the labour
    And I calcualte totals
    Then I should see the 8 percent tax is calculated as "8" dollar
    And the total should be "108" dollar

  Scenario: One of the value must be more than 0
    Given I am in the receipt page
    When I calcualte totals
    Then I should see "Invalid Inputs" error message


