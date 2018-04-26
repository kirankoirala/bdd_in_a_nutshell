Feature: Testing google page
  In order to find solera holdings
  As a company searcher
  I want to find solera holding in a google search result

  Scenario: Search for solera
    Given I am in Google home page
    When I search for "solera"
    Then I should see "solera" in the result page

