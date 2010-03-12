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
     
    

 
   

    
     
     
     
     
     
     