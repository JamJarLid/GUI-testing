Feature: Add to cart
  As a user I want to be able to add products
  into my cart, so that I can buy them.

  Scenario: Adding "1" "Bordslampa" to the cart
    Given that I am on the start page
    And that I have searched for "Bordslampa"
    When I click the buy button "1" time
    Then "1" "Bordslampa" should be added to the cart