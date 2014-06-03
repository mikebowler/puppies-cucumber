class HomePage
  include PageObject

  page_url 'http://puppies.herokuapp.com'

  divs(:name, :class => 'name')
  buttons(:view_details, :value => 'View Details')

  button(:view_details, :value => 'View Details')

  def adopt(name)
    puppy_index = name_elements.find_index {|div| div.text == name}
    view_details_elements[puppy_index].click
  end

end