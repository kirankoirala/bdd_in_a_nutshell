Feature: search solera
  In order to learn cucumber
  As a developer
  I want to write a sample scenario which will search Solera in Google

  Scenario: search Solera
    Given I am in google home page
    When I search for "Solera"
    Then "Solera" appears in the search result
