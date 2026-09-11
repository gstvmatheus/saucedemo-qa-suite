describe('Fluxo de Automação de Compra - SauceDemo', () => {

  beforeEach(() => {
    cy.visit('https://www.saucedemo.com');
  });

  it('Deve realizar o login e concluir a compra de um produto com sucesso', () => {
    // 1. Realizar login
    cy.get('#user-name').type('standard_user');
    cy.get('#password').type('secret_sauce');
    cy.get('#login-button').click();

    // Validação da URL
    cy.url().should('include', '/inventory.html');

    // 2. Adicionar ao carrinho e acessar o carrinho
    cy.get('[data-test="add-to-cart-sauce-labs-backpack"]').click();
    cy.get('.shopping_cart_link').click();

    // 3. Validar item e avançar para checkout
    cy.get('.inventory_item_name').should('have.text', 'Sauce Labs Backpack');
    cy.get('[data-test="checkout"]').click();

    // 4. Preencher dados de entrega
    cy.get('[data-test="firstName"]').type('Gustavo');
    cy.get('[data-test="lastName"]').type('Tester');
    cy.get('[data-test="postalCode"]').type('59000-000');
    cy.get('[data-test="continue"]').click();

    // 5. Finalizar pedido e validar mensagem
    cy.get('[data-test="finish"]').click();
    cy.get('.complete-header').should('have.text', 'Thank you for your order!');
  });

});