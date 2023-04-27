Feature: Search
  As a user I want to able to search for products
  using the search field.

  Background: Start from the homepage
    Given that I am on the start page

  Scenario: Searching for products including "s"
    When I enter the letter "s" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Spotlight"