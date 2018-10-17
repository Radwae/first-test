package com.carrefourFedelity.services;

import java.util.List;

import com.carrefourFedelity.entities.Account;
import com.carrefourFedelity.entities.Card;
import com.carrefourFedelity.entities.Response;

public class CardService {
	
	Account ac = new Account();
	List<Card> list;
	
	public int envoisCardFied(Card crd) {
		return 200;
	}
	
	public Response<Card> changeStatutCard(Card c, String statut){
		c.setCard_status(statut);
		Response<Card> res= new Response<Card>("success", 204, c);
		return res;
	}
	
	public Account getMemebrCards(String account_number){
		ac.setAccount_number(account_number);
		ac.setAccount_status("test");
		list = ac.getCard_informations();
		for(int i =0 ; i<5; i++) {
			list.add(new Card("n"+i,"n"+i,"n"+i,"n"+i,"n"+i,"n"+i));
		}
		
		return ac;
	}

	
}
