Feature: Search
  As a user I want to able to search for products
  using the search field.

  Background: Start from the homepage
    Given that I am on the start page

  Scenario: Searching for products including "s"
    When I enter the letter "s" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Spotlight"

  Scenario: Searching for products including "e"
    When I enter the letter "e" in the search field
    Then I should see the product "Lampett"

  Scenario: Searching for products including "t"
    When I enter the letter "t" in the search field
    Then I should see the product "Taklampa"
    And I should see the product "Lampett"
    And I should see the product "Spotlight"

  Scenario: Searching for products including "la"
    When I enter the letter "la" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Taklampa"
    And I should see the product "Lampett"
    And I should see the product "Golvlampa"

  Scenario: Searching for products including "p"
    When I enter the letter "p" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Spotlight"
    And I should see the product "Taklampa"
    And I should see the product "Lampett"
    And I should see the product "Golvlampa"