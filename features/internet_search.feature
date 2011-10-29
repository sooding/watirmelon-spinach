Feature: Internet Search
  As a casual internet user
  I want to find some information about watir, and do a quick conversion
  So that I can be knowledgeable being

  Scenario: Search for Watir on Google
    Given I am on the Google Home Page
    When I search for "Watir"
    Then I should see at least 100,000 results
    
  Scenario: Search for Watir on Bing
    Given I am on the Bing Home Page
    When I search for "Watir"
    Then I should see at least 30,000 results

  Scenario: Do a unit conversion on Google
    Given I am on the Google Home Page
    When I convert 10 cm to inches
    Then I should see the conversion result "10 centimeters = 3.93700787 inches"
     
  Scenario: Do a search using data specified externally on Google
    Given I am on the Google Home Page
    When I search for a ridiculously small number of results
    Then I should see at most 100 results

  Scenario: Do a search using data specified externally on Google
    Given I am on the Bing Home Page
    When I search for a ridiculously small number of results
    Then I should see at most 100 results
