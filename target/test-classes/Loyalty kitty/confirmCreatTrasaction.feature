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
Feature: commit PreBook Transaction / commit PreCreate Transaction or commit PreCreated
  Do an action on transaction

  @tag1
  Scenario: confirm Transation
    Given a card with $id_card 
    When I call POST /loyalty_accounts/my/transactions with a $id_card
    And  a request trasaction with action confirm 
    Then The response 201 is returned with success message

  @tag2
  Scenario: commit PreCreate Transaction
    Given a card with $id_card 
    When I call POST /loyalty_accounts/my/transactions with a $id_card
    And  a request trasaction with action commitPreCreated
    Then The response 201 is returned with success message

  