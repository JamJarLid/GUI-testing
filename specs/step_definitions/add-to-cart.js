import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

let productName

Given('that I am on the start page', () => {
  cy.visit('/');
});

When('I have searched for {string}', (searchTerm) => {
  productName = searchTerm
  cy.get('#search').type(productName);
});

When('I click the buy button {string} time(s)', (clickCount) => {
  for (let i = 1; i <= +clickCount; i++) {
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

Then('The price will be correct', () => {
  let collected = [];
  let total = [];
  cy.get('#cart li')
    .contains(productName)
    .find('span').each(span => {
      collected.push(+span.text().replace(/\D/g, ''));
      if (collected.length === 3) {
        expect(collected[0] * collected[1]).to.equal(collected[2]);
      }
    });
  cy.get('#cart li')
    .contains("Total")
    .find('span').each(span => {
      total.push(+span.text().replace(/\D/g, ''));
    });
  expect(collected[2]).to.equal(total[0]);
});




