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
Feature: envoi Carte Fid
 Allows to take into account the request of sending of the physical card made by the customer.

  @tag1
  Scenario: Change Carte Statut
  
    Given a valid  $send_loyelty_request                                     # RedComment :use mokito  for unit test  
    And   a card with $card_id
    When  i call put /loyalty_cards/my with the send valid request
    Then  the response 201 is returned with success message 

