package com.carrefourFedeliry.cards;

import org.mockito.Mockito;

import com.carrefourFedelity.entities.Card;
import com.carrefourFedelity.entities.Response;
import com.carrefourFedelity.services.CardService;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ChangeCardSteps {
	
	
    /* Change card status */
	
	Card crd = Mockito.mock(Card.class);
	CardService service = new CardService();
	Response<Card> response;
	
@Given("^A fidelity card with statutCard (.*)$")
public void a_fidelity_card_with_statutCard_creat(String st) throws Throwable {
	
	crd.setCard_status(st);
	
}

@When("^a status (.*)$")
public void a_status_valide(String statut) throws Throwable {
	crd.setCard_status(statut);
}

@When("^I call PUT /loyalty_cards/my/status with (.*)$")
public void i_call_PUT_loyalty_cards_my_status(String statut) throws Throwable {
		this.response = this.service.changeStatutCard(crd, statut);
}

@Then("^I get statut (\\d+)$")
public void i_get_statut(int arg1) throws Throwable {

}

@Then("^A success message$")
public void a_success_message() throws Throwable {

}

@Then("^I get a card$")
public void i_get_a_card() throws Throwable {
// Write code here that turns the phrase above into concrete actions

}

}
