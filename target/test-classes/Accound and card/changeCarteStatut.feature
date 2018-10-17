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
Feature: change Carte Status
   Update a card status

  @tag1
  Scenario: change the fidelity card status
    Given a card with a id card 9135720000552370052 and status 1
    When I call PUT /loyalty_cards/my/status with the 9135720000552370052 the statut is 2 and a valid reason 1
    Then The response 204 is returned with success message
    And  The fidelity card status has changed to 2
    
    
    @tag2 
  Scenario: dont change the fidelity card status using invalid fidelity card number
  
    When I call PUT /loyalty_cards/my/status with the $id_card the $statut and $valid_rason
    Then An error message is returned indicating that the fidelity card number is invalid
    
    @tag3 
  Scenario: dont change the fidelity card status using the same status
    Given a card with a $id_card and $same_statut
    When I call PUT /loyalty_cards/my/status with the $id_card the $same_statut and $valid_rason
    Then An error message is returned indicating that the statuts are the same
    
    
    
  