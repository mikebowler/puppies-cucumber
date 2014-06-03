When(/^I click on the first puppy$/) do
  on(HomePage).view_details
end


And(/^I click on the adopt me button$/) do
  on(DetailsPage).add_to_cart
end

And(/^I click the Complete the Adoption button$/) do
  on(ShoppingCartPage).go_to_checkout
end

And(/^I enter "([^"]*)" as the name$/) do |name|
  on(CheckoutPage).name = name
end

And(/^I enter the address "([^"]*)"$/) do |address|
  on(CheckoutPage).address = address
end

And(/^I enter the email "([^"]*)"$/) do |email|
  on(CheckoutPage).email = email
end

And(/^I use a "([^"]*)"$/) do |pay_type|
  on(CheckoutPage).pay_type = pay_type
end

And(/^I click on the place order button$/) do
  on(CheckoutPage).place_order
end