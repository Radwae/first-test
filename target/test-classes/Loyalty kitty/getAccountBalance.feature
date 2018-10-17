#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: get Account Balance
  Returns the account balance as well as the real time balance related to the card account. 
  It takes into account the balance Siebel provides at night and transactions made during the day
  
  @tag1
  Scenario: Display the account balance
    Given a card with $id_card
    And  some other precondition
    When I call GET /loyalty_accounts/my/balances with $id_card and $store_id
    Then The response 200 is returned with success message
    And  The account balance is displayed

  
