package com.carrefourFedelity.entities;

public class Response<R>{
	
	private String mesage;
	private int statut;
	private R response;
	
	
	
	
	public Response() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Response(String mesage, int statut, R response) {
		super();
		this.mesage = mesage;
		this.statut = statut;
		this.response = response;
	}
	public String getMesage() {
		return mesage;
	}
	public void setMesage(String mesage) {
		this.mesage = mesage;
	}
	public int getStatut() {
		return statut;
	}
	public void setStatut(int statut) {
		this.statut = statut;
	}
	public R getResponse() {
		return response;
	}
	public void setResponse(R response) {
		this.response = response;
	}
	
	

}
