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
Feature: subscribe Club
	Allows the customer to subscribe to a club by entering their loyalty card number,
	club and channel from a multi-service kiosk or tablet.
	
  @tag1
  Scenario: Subscribe to a club
    Given a card with $id_card
    And a clus with $name
		When I call PUT /loyalty_cards/my/club with $id_card and a club called $name
		Then The response 204 is returned with success message
		And The club called $name is affected to the account

  