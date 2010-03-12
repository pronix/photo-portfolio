   Scenario Outline: Comments   
    Given I am logged as an owner
    And I am on view post page
    And I fill in the following:
     | Commenter | <name> |
     | Body      | <body> |
     | Time      | <time> |
    When I press "Comment"
    Then I should see "<message>"
    And must be "<num>" new record in database
   Examples:
   | name    | body | time     | num | mesage               |
   | MyName  | text | datetime | 1   | Comment added        |
   |         | text | datetime | 1   | Comment added        |
   | MyName  |      | datetime | 0   | Comment wasn't added |