Feature: Product Feature

  Background:
    Given I open the "https://www.saucedemo.com/" page

  # Create a datatable to validate the Price (high to low) and Price (low to high) sort options (top-right) using a Scenario Outline
  Scenario Outline:  Validate product sort by price <sort>
  Then I will login as 'standard_user'
    When I sort the items by "<sort>"
    # TODO: Validate all 6 items are sorted correctly by price
    Then I should see exactly 6 items 
    And all items should be sorted by price "<direction>"
  Examples:
    # TODO: extend the datatable to paramterize this test
    | sort | direction          |
    | Price (low to high) | ascending  |
    | Price (high to low) | descending |
