import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

let productName

Given('that I am on the start page', () => {
  cy.visit('/');
});

Given('that I have searched for {string}', (searchTerm) => {
  productName = searchTerm
  cy.get('#search').type(productName);
});

When('I click the buy button {string} time', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++){
  cy.get('div.product h2')
    .contains(productName)
    .parents('.product')
    .should('be.visible')
    .find('button').contains('Köp')
    .click();
  }
});

Then('{string} {string} should be added to the cart', (quantity, productName) => {
  cy.get('#cart')
    .get('li').contains(productName)
    .contains(quantity + 'st')
    .should('have.length', 1);
});