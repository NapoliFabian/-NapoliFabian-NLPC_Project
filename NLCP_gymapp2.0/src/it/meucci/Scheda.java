package it.meucci;

public class Scheda {
	private int idscheda;
	private String ids;
	private String codf;
	
	
	public Scheda() {
		super();
	}


	public Scheda(int idscheda, String ids, String codf) {
		super();
		this.idscheda = idscheda;
		this.ids = ids;
		this.codf = codf;
	}




	public int getIdscheda() {
		return idscheda;
	}




	public void setIdscheda(int idscheda) {
		this.idscheda = idscheda;
	}




	public String getIds() {
		return ids;
	}




	public void setIds(String ids) {
		this.ids = ids;
	}




	public String getCodf() {
		return codf;
	}




	public void setCodf(String codf) {
		this.codf = codf;
	}
	
	
	
	
}
