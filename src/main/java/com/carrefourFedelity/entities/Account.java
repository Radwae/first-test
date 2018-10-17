package com.carrefourFedelity.entities;

import java.util.ArrayList;
import java.util.List;

public class Account {
	
	private String account_number;
	private String account_status;
	private List<Card> card_informations = new ArrayList<Card>();
	
	
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public String getAccount_status() {
		return account_status;
	}
	public void setAccount_status(String account_status) {
		this.account_status = account_status;
	}
	public List<Card> getCard_informations() {
		return card_informations;
	}
	public void setCard_informations(List<Card> card_informations) {
		this.card_informations = card_informations;
	}
}
