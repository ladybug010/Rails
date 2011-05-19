Feature: show account
  In order to track accounts
  a user on the account list page
  wants to see my account
  
  Scenario: Show account
  	Given I have an account named "Checking" with number "123" with balance "100.00"
    And I am on the account list page
    When I follow "show"
  	Then I should see "Checking"
  	And I should see "123"
  	And I should see "$100.00"
    