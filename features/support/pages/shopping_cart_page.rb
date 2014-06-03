class ShoppingCartPage
  include PageObject

  button(:go_to_checkout, :value => 'Complete the Adoption')
  button(:adopt_another, :value => 'Adopt Another Puppy')

  table(:cart, :index => 0)

  def get_puppy_names
    cart_element.collect do |row|
      next unless row[1].h2_element.exists?
      name = row[1].h2_element.text
      puts name.inspect
      name
    end.compact
  end
end