package com.carrefourFedelity.entities;

public class Card {
	
	String card_number;
	
	String card_type;
	
	String card_status;
	
	String secret_code_flg;
	
	String carrier_type;
	
	String home_key;
	
	
	public Card() {
		
	}

	public Card(String card_number, String card_type, String card_status, String secret_code_flg, String carrier_type,
			String home_key) {
		super();
		this.card_number = card_number;
		this.card_type = card_type;
		this.card_status = card_status;
		this.secret_code_flg = secret_code_flg;
		this.carrier_type = carrier_type;
		this.home_key = home_key;
	}

	public String getCard_number() {
		return card_number;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}

	public String getCard_type() {
		return card_type;
	}

	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}

	public String getCard_status() {
		return card_status;
	}

	public void setCard_status(String card_status) {
		this.card_status = card_status;
	}

	public String getSecret_code_flg() {
		return secret_code_flg;
	}

	public void setSecret_code_flg(String secret_code_flg) {
		this.secret_code_flg = secret_code_flg;
	}

	public String getCarrier_type() {
		return carrier_type;
	}

	public void setCarrier_type(String carrier_type) {
		this.carrier_type = carrier_type;
	}

	public String getHome_key() {
		return home_key;
	}

	public void setHome_key(String home_key) {
		this.home_key = home_key;
	}
	
	
	

}
