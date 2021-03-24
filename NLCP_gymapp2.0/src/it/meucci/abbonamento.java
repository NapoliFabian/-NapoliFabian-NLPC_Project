package it.meucci;



public class abbonamento {

	private int idabbonamento;
	private String  inizio;
	private String  fine;
	private String codf;
	private String nomecorso;
	
	public abbonamento() {
		// TODO Auto-generated constructor stub
	}
	
	public abbonamento(int idabbonamento,String inizio,String fine,String codf,String nomecorso) {
		
		this.idabbonamento = idabbonamento;
		this.inizio = inizio;
		this.fine = fine;
		this.codf = codf;
		this.nomecorso = nomecorso;
	}

	public int getIdabbonamento() {
		return idabbonamento;
	}

	public void setIdabbonamento(int idabbonamento) {
		this.idabbonamento = idabbonamento;
	}

	public String  getInizio() {
		return inizio;
	}

	public void setInizio(String inizio) {
		this.inizio = inizio;
	}

	public String  getFine() {
		return fine;
	}

	public void setFine(String  fine) {
		this.fine = fine;
	}

	public String getCodf() {
		return codf;
	}

	public void setCodf(String codf) {
		this.codf = codf;
	}

	public String getNomecorso() {
		return nomecorso;
	}

	public void setNomecorso(String nomecorso) {
		this.nomecorso = nomecorso;
	}

	@Override
	public String toString() {
		return "abbonamento [idabbonamento=" + idabbonamento + ", inizio=" + inizio + ", fine=" + fine + ", codf="
				+ codf + ", nomecorso=" + nomecorso + "]";
	}
	
	
}
