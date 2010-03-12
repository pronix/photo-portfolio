Feature: Main Models
  In order to work with portfolio site
  As an administrator
  I want to add, delete, edit, update different chapters
  
  Scenario Outline: News
    Given I am logged as an owner
    And I am on new report page
    And I fill in the following:
     | Title             | <title> |
     | Short Description | <desc>  |
     | Body              | <body>  |
    And I select "<date>" from Date 	
    When I press "Add"
    Then must be "<num>" new record in database
    And I should see "<message>"
    
    Examples:
     | title | desc | date       | body | num | message             |
     | news  | some | 01-01-2010 | body |  1  | Added new record    |
     |       | some | 01-01-2010 | body |  0  | Fill in all fields! |
     | news  |      | 01-01-2010 | body |  0  | Fill in all fields! |
     | news  | some |            | body |  0  | Fill in all fields! |
     | news  | some | 01-01-2010 |      |  0  | Fill in all fields! |
     
   Scenario Outline: Post
    Given I am logged as an owner
    And I am on new post page
    And I fill in the following:
     | Title             | <title> |
     | Keywords          | <key>   |
     | Short Description | <desc>  |
     | Body              | <body>  |
    When I press "Add"
    Then must be "<num>" new record in database
    And I should see "<message>"
   Examples:
     | title | key | desc | date       | body | num | message             |
     | news  | key | some | 01-01-2010 | body |  1  | Added new record    |
     |       | key | some | 01-01-2010 | body |  0  | Fill in all fields! |
     | news  |     |      | 01-01-2010 | body |  0  | Fill in all fields! |
     | news  | key | some |            | body |  0  | Fill in all fields! |
     | news  | key | some | 01-01-2010 |      |  0  | Fill in all fields! |
     
   Scenario Outline: Contacts   
    Given I am logged as an owner
    And I am on edit contacts page
    And I fill in the following:
     | Name      | <name>    |
     | Email     | <email>   |
     | Phone     | <phone>   |
     | WPhone    | <wphone>  |
     | Address   | <address> |
    When I press "Save"
    Then must be "<num>" new record in database
    And I should should see "<message>"
   Examples:
     | name    | email       | phone         | wphone   | address   | num | mesage             |
     | MyName  | bod-lv@i.ua | +380968379944 | 12345678 | some text | 1   | Contacts saved     |
     |         | bod-lv@i.ua | +380968379944 | 12345678 | some text | 0   | Fill in all fields |
     | MyName  |             | +380968379944 | 12345678 | some text | 0   | Fill in all fields |
     | MyName  | bod-lv@i.ua |               | 12345678 | some text | 0   | Fill in all fields |
     | MyName  | bod-lv@i.ua | +380968379944 |          | some text | 0   | Fill in all fields |
     | MyName  | bod-lv@i.ua | +380968379944 | 12345678 |           | 0   | Fill in all fields |
      
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
 
   

    
     
     
     
     
     
     