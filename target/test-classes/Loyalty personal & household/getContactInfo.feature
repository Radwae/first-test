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
Feature: get Contact Info
	Search and retrieve loyatly members informations using some serach criteria.

  @tag1
  Scenario: get contact list sershing by name
    Given a list with $size_list of contacts
    And a $size_sous_list of contact having $name as name
    When I call GET /loyalty_members with a $name
    Then The response 200 is returned with success message
    And  a $size_sous_list elemnts of loyalty_member_infos_response are returned

  