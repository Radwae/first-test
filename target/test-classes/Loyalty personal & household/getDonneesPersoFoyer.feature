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
Feature: get donnees Perso Foyer
	Returns the household data of the cardholder given input and information about his home

  @tag1
  Scenario: Update personal houshold data
    Given a card with $id_card for a account that have the $last_name as last name
    When I call GET /loyalty_members/my/household with the id card $id_card
    Then The response 204 is returned with success message
    And  The houshold returned having the $last_name 

  
