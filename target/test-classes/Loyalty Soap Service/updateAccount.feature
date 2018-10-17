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
Feature: update Account


  @tag1
  Scenario: Update account (attachment of a card)
    Given An account with only one card having $id_card as id card
    When I call service updateAccount with $id_card
    Then A success message is returned
    And The account has two cards affected.
  
  @tag2
  Scenario: Update account (detachment of a card)
    Given An account with two card having 
    When I call service updateAccount with $id_card  # a completer
    Then A success message is returned
    And The account has only one card.

  