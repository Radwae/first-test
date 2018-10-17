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
Feature: set Tentatives Code Secret
  update of the number of attempts to enter the secret code in case of failure
	
  @tag1
  Scenario: Update number of tries for secret code
    Given a tries 
    And a card with $id_card and $num_of_attempts
    When I call PUT /loyalty_cards/my/attempts with  $id_card and $new_num_of_attempts
    Then he response 204 is returned with a success message
    And The number of tries is updated to $new_num_of_attempts

