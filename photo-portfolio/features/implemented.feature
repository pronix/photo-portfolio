  Scenario: Information   
    Given I am logged as an owner
    And I am on edit information page
    And I fill in "name" with "Name"
    And I fill in "body" with "text"
    When I press "Create"
    Then I should see "Contacts updated "

   Scenario: Post
    Given I am logged as an owner
    And I am on new post page
    And I fill in the following:
     | Title             | First      |
     | Short Description | Something  |
     | Body              | Text       |
    When I press "Add"
    Then must be new record in Posts with title "First"
    And I should see "Post was created"