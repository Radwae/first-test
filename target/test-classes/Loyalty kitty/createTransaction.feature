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
Feature: creat , precreat and bookcreat a trasaction
  Create new transaction in Stac ,
   called stac method will depends from create_transaction_request.status

  @tag1
  Scenario: precreat a trasaction
    Given a card with $id_card 
    When I call POST /loyalty_accounts/my/transactions with a $id_card
    And  a request trasaction with action PreCreated
    Then The response 201 is returned with success message

  @tag2
  Scenario: book a trasaction
    Given a card with $id_card 
    When I call POST /loyalty_accounts/my/transactions with a $id_card
    And  a request trasaction with action Reserved
    Then The response 201 is returned with success message

  @tag3
  Scenario: creat a trasaction
    Given a card with $id_card 
    When I call POST /loyalty_accounts/my/transactions with a $id_card
    And  a request trasaction with action Confirmed 
    Then The response 201 is returned with success message
