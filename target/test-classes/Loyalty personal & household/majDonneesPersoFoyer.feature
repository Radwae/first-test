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
Feature: maj Donnees Perso Foyer
	Update of the household data of the customer, as well as other members of the home

  @tag1
  Scenario: Update the a houshold last name
    Given a card with id card $id_card and code secret $code_secret
    And  the account have the $last_name as last name
    When I call PUT /loyalty_members/my/household with the $id_card and $code_secret
    And  the $new_last_name as a last name
    Then The response 204 is returned with success message
    And  The houshold returned with the $new_las_name