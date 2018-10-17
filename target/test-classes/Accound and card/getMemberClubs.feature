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
Feature:  get Member Clubs
    Returns the list of clubs attached to an account

  @tag1
  Scenario: display the clubs affected to the account
  
    Given a card with $id_card belonging to a accout that have $size clus
     When I call GET /loyalty_cards/my/club with a $id_card
    Then The response 200 is returned with success message
		And The clubs affected to the account are displayed with $size
		
		@tag2
  Scenario: display the clubs affected to the account
  
    Given a card with $id_card belonging to a accout that have no clus
    When I call GET /loyalty_cards/my/club with a $id_card
    Then The response 200 is returned with success message
		And The Message that no club is affected to that account
		

  
