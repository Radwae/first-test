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
Feature: get the list of medias
   build the possible media channel such SMS , 
  Email from customer personal data, returned channel are masek with star and can be 

  @tag1
  Scenario: get the list of medias
    Given a card with $id_card a list of $size medias
    When I call GET /loyalty_cards/my/medias with a $id_card
    Then The response 204 is returned with success message
    And  The list with $size are returned  with type media