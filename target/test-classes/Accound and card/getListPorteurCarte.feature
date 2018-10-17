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
Feature: Tget List Porteur Carte
	Return the list of the holders with the detail of the information
	related to the bearer as well as the cards with their detail.

  @tag1
  Scenario: Display information about all the holders of the card
  
    Given a card with $id_card $list_holder_size and $one_name 
    When  I call GET /loyalty_cards/my/holders with $id_card
    Then  The response 200 is returned with success message
    And   a list of holder has $list_holder_size as size
 