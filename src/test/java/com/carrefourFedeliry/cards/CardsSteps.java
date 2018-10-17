package com.carrefourFedeliry.cards;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

import org.mockito.Mockito;

import com.carrefourFedelity.entities.Card;
import com.carrefourFedelity.services.CardService;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CardsSteps {
	
	Card crdG = new Card();
	Card crd =  Mockito.mock(Card.class); //new Card();
	int statut = 0;
	CardService service =new CardService();
	
	
	@Given("^a card with num (.*) and statut (.*)$")
	public void certificationName(String num, String statut) throws Throwable {
		crdG.setCard_number(num);
		crdG.setCard_status(statut);
	}

	@When("^I enter num  (.*)$")
	public void gotMarks(String numb) throws Throwable {
		crd.setCard_number(numb);
		
	}
	
	@When("^I log to the adresse /loyalty_cards/my by put methode$")
	public void i_log_to_the_adresse_loyalty_cards_my_by_put_methode() throws Throwable {
		// j'appel la methode ici
		this.statut = service.envoisCardFied(crd);
	}

	@Then("^send me  (\\d+)$")
	public void sendMe(int resp) throws Throwable {
		assertThat(resp, is(this.statut));
	}
	
	
	



}
