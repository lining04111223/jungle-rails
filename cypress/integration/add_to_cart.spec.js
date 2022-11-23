describe("add_to_cart.spec.js", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it(" Users should be able to click the 'Add to Cart' button for a product on the home page and in doing so their cart increases by one", () => {
    cy.contains(".nav-item", "My Cart(0)").should("be.visible");

    cy.contains(".btn", "Add").click({ force: true });

    cy.contains(".nav-item", "My Cart(1)").should("be.visible");
  });
});
