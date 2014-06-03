Feature: Adopting a Puppy

  In this feature, we'll leverage our tests to originally adopt a puppy, but
  later on, we will expand this feature to adopt multiple puppies, and
  verify several instances of data that needs validation.

  Background:
    Given I am on the puppy adoption site

  Scenario: Adopt One Puppy
    When I complete the adoption of "Brook"
    Then I should see "Thank you for adopting a puppy!"

  @not_ready
  Scenario: Checking out without a Name
    When I complete an adoption of "Brook" without a name
    Then I should see an error message of "Name can't be blank"

  Scenario: Adopting a Puppy with Poor Gherkin
    When I click on the first puppy
    And I click on the adopt me button
    And I click the Complete the Adoption button
    And I enter "Bob" as the name
    And I enter the address "123 Short Pump Road"
    And I enter the email "bob@shortpumpcommons.com"
    And I use a "Check"
    And I click on the place order button
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Puppies should be listed in sorted order
    When I adopt "Hanna"
    And I want to adopt another puppy
    And I adopt "Brook"
    Then the puppies should be in alphabetical order

  Scenario: Puppies should be listed in sorted order, part II
    When I want to adopt "Hanna"
    And then I want to adopt "Brook"
    Then the puppies should be in alphabetical order