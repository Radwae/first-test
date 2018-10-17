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
Feature: is Num Carte Valide ?
  Chek if the card is valid

  @tag1
  Scenario: Check that the fidelity card number is valid
    
    When I call GET /loyalty_cards/my/status with $valid_num_card
    Then The response 200 is returned
    And  the message indicate that the $card_num is valid 

  @tag2
  Scenario: Error message returned when the fidelity card number is invalid
    When I call GET /loyalty_cards/my/status with $invalid_num_card
    Then An error message is returned indicating that the fidelity card number is invalid
   
   @tag3
   Scenario: Error message returned when the fidelity card number is already exist
    Given a card with $given_num_card
    When I call GET /loyalty_cards/my/status with $given_num_card
    Then An error message is returned indicating that the fidelity card is already exist
  
    
