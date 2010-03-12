   Scenario: Comments   
    Given I am logged as an owner
    And I am on view post page
    And I fill in the following:
     | Commenter | name |
     | Body      | body |
    When I press "Comment"
    Then I should see "Comment added"
    And must be new comment in Comments
