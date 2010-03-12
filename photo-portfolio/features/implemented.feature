  Scenario: Information   
    Given I am logged as an owner
    And I am on edit information page
    And I fill in "name" with "Name"
    And I fill in "body" with "text"
    When I press "Create"
    Then I should see "Contacts updated "