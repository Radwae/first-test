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
Feature: Init Maj Code Secret
	update the secret code of a given card

  @tag1
  Scenario: 	Change the secret code of a fidelity card
    Given a card with $id_card and $secret 
    When I call PUT /loyalty_cards/my/account with the $id_card  $secret and the $new_secret
    Then The response 204 is returned with success message

  
