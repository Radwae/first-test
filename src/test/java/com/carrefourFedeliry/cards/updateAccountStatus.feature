#Author:     Radwane EL HADDADI
#email : radwane_el_haddadi@carrefour.com

Feature: update Account Status
	This method is used to update the status of an account in real time and the status of associated cards.
       It allows, among other things, to manage the deactivation of an account.
         If the account is blocked then all associated cards go into idle status

  
  Scenario: Update the account status
    Given a card with id_card
    When  I call PUT /loyalty_accounts/my with a id_card a loyalty account with the $new_status and the action is update_status
    Then  The response 204 is returned with success message
    And   the account status has changed to $new_status

  
  Scenario: the account status with invalid account number
	
		When I call PUT /loyalty_accounts/my with an $invalid_id_card
		Then An error message is returned that the account number is invalid
		