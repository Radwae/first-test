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
Feature: maj Donnees Perso
	Allows the update of the customer s personal data.

  @tag1
  Scenario: update the tel 
    Given a card with id card $id_card for a member with the $mail
    And   the member have $tel
    When I call PUT /loyalty_members/my with a $id_card
    And the member that have $email
    And with the $new_tel
    Then The response 204 is returned with success message
    And the tel of the member is $new_tel

  