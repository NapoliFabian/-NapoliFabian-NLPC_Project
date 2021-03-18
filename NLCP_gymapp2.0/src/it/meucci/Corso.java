package it.meucci;

public class Corso {

	private String nomecorso;
	private int prezzo;
	private String descrizione;
	
	
	
	
	public Corso() {
		super();
	}




	public Corso(String nomecorso, int prezzo, String descrizione) {
		super();
		this.nomecorso = nomecorso;
		this.prezzo = prezzo;
		this.descrizione = descrizione;
	}




	public String getNomecorso() {
		return nomecorso;
	}




	public void setNomecorso(String nomecorso) {
		this.nomecorso = nomecorso;
	}




	public int getPrezzo() {
		return prezzo;
	}




	public void setPrezzo(int prezzo) {
		this.prezzo = prezzo;
	}




	public String getDescrizione() {
		return descrizione;
	}




	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	
	
}
