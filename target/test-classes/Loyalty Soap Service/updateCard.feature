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
Feature: update Card
  I wan to update a card

  @tag1
  Scenario: Update a card (status and secret code)
    Given An active card with a the secret code $secret_code and the status $current_staut
    When I call service updateCard with status is inactive and $new_secret code)
    Then A success message is returned 
    And The card status and secret code have been updated to active and $new_secret code

  