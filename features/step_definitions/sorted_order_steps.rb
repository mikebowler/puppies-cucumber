When(/^I adopt "([^"]*)"$/) do |name|
  on(HomePage).adopt name
  on(DetailsPage).add_to_cart
end

And(/^I want to adopt another puppy$/) do
  on(ShoppingCartPage).adopt_another
end

Then(/^the puppies should be in alphabetical order$/) do
  on(ShoppingCartPage) do |page|
    actual = page.get_puppy_names
    expected = actual.sort{|a,b| a <=> b}
    actual.should == expected
  end
end

When(/^(then\s+)?I want to adopt "([^"]*)"$/) do |then_flag, name|
  on(ShoppingCartPage).adopt_another unless then_flag.nil?
  on(HomePage).adopt name
  on(DetailsPage).add_to_cart
end