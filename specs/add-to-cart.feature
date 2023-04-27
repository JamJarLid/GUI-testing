Feature: Add to cart and check the totals
  As a user I want to be able to add products
  into my cart, so that I can buy them.
  Also check the totals of the cart

  Background: Start from the homepage
    Given that I am on the start page

  Scenario Outline: Adding "<quantity>" "<product>" to the cart
    When I have searched for "<product>"
    And I click the buy button "<quantity>" times
    Then "<quantity>" "<product>" should be added to the cart

    Examples:
      | product    | quantity |
      | Bordslampa | 1        |
      | Bordslampa | 2        |
      | Spotlight  | 1        |
      | Spotlight  | 3        |
      | Lampett    | 2        |

  Scenario: Calculating the price of "3" "Bordslampor"
    When I have searched for "Bordslampa"
    And I click the buy button "3" times
    Then The price will be correct

  Scenario: Calculating the price of "2" "Golvlampor"
    When I have searched for "Golvlampa"
    And I click the buy button "2" times
    Then The price will be correct

  Scenario: Calculating the price of "10" "Lampetter"
    When I have searched for "Lampett"
    And I click the buy button "10" times
    Then The price will be correct

  Scenario: Calculating the price of "5" "Spotlights"
    When I have searched for "Spotlight"
    And I click the buy button "5" times
    Then The price will be correct