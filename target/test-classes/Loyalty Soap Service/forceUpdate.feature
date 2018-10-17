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
Feature: force Update
  

  @tag1
  Scenario: Get personal data before and after activation of force update flag
    Given force update flag is not activated 
    And firstname in Midfid is $fist_name_mid
    And firstname in Siebel is $fist_name_sid 
    When I get personal data
		Then the personal data are displayed with $fist_name_mid as name

  @tag2
  Scenario: activation of force update flag
		Given force update flag is not activated
    And firstname in Midfid is $fist_name_mid
    And firstname in Siebel is $fist_name_sid 
    When I get personal data
		And I call service forceUpdate with #valid parameters
	  Then A success message is returned
		And Force update flag is activated
		And Personal data are displayed from Siebel database