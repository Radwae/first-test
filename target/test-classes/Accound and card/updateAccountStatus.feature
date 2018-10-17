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
Feature: update Account Status
	This method is used to update the status of an account in real time and the status of associated cards.
       It allows, among other things, to manage the deactivation of an account.
         If the account is blocked then all associated cards go into idle status

  @tag1
  Scenario: Update the account status
    Given a card with $id_card
    When  II call PUT /loyalty_accounts/my with a $id_card 
    And   a loyalty account with the $new_status
    And   the action is update_status
    Then  The response 204 is returned with success message
    And   the account status has changed to $new_status

  @tag2
  Scenario: the account status with invalid account number
	
		When I call PUT /loyalty_accounts/my with an $invalid_id_card
		Then An error message is returned that the account number is invalid
		