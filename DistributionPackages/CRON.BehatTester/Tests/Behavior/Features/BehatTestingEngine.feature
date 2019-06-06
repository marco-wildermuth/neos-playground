@browser
Feature: The Behat Engine can perform some basic tasks without errors

  Scenario: Accessing the Neos.Demo site with the goutte driver
    Given I go to "/"
    Then I should see "Create"
    And I should see "content"
    But I should not see "Exception"

  @javascript
  Scenario: Accessing the Neos.Demo site with the selenium driver
    Given I go to "/"
    Then I should see "Create"
    And I should see "content"
    But I should not see "Exception"