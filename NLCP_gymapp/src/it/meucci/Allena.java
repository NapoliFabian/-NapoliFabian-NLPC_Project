package it.meucci;

public class Allena {
	private int idallenamento;
	private String codf;
	
	
	public Allena() {
		super();
	}

	public Allena(int idallenamento, String codf) {
		super();
		this.idallenamento = idallenamento;
		this.codf = codf;
	}



	public int getIdallenamento() {
		return idallenamento;
	}



	public void setIdallenamento(int idallenamento) {
		this.idallenamento = idallenamento;
	}


	public String getCodf() {
		return codf;
	}



	public void setCodf(String codf) {
		this.codf = codf;
	}

	
}
