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
Feature: set Adhesion Fid  Easy EnLigne
  Subscribe to loyalty_membership program using Borne/Tablette ,
   Adhesion CZAM card, 
   Allows the customer who does not have a card in hand, 
   to fill in his personal data and request a loyalty membership. 
   A loyalty card number is sent back.

  @tag1
  Scenario: set Adhesion Fid
  
    When I  call POST /loyalty_members with loyalty membership 
    And  the loyalty membership have Fid as type
    Then The response 201 is returned with success message
    And  The acount is created with all data.
    
  @tag1
  Scenario: set Adhesion Easy
  
    When I  call POST /loyalty_members with loyalty membership 
    And  the loyalty membership have Easy as type
    Then The response 201 is returned with success message
    And  The acount is created with all data.
    @tag1
  Scenario: set Adhesion Online
  
    When I  call POST /loyalty_members with loyalty membership 
    And  the loyalty membership have Online as type
    Then The response 201 is returned with success message
    And  The acount is created with all data.

 
