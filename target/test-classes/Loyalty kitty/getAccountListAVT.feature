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
Feature: get Account List AVT
	Get a list of a customer's benefits

  @tag1
  Scenario: get the list of advantages of a fidelity card
    Given a card with $id_card having a list of customers with $size
    When I call GET /loyalty_members/my/benefits with $id_card
    Then The response 200 is returned with success message
    And The list of advantages is displayed having $size.

  