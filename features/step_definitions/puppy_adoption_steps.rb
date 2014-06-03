Given(/^I am on the puppy adoption site$/) do
  visit HomePage
end

When(/^I complete the adoption of "([^"]*)"$/) do |name|
  on(HomePage).adopt name
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).go_to_checkout
  on(CheckoutPage).checkout
end

Then(/^I should see "([^"]*)"$/) do |text|
  on(HomePage).text.should include text
end