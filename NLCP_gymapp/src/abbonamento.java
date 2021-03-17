

import java.sql.Date;

public class abbonamento {

	private int idabbonamento;
	private Date inizio;
	private Date fine;
	private String codf;
	private String nomecorso;
	
	public abbonamento() {
		// TODO Auto-generated constructor stub
	}
	
	public abbonamento(int idabbonamento,Date inizio,Date fine,String codf,String nomecorso) {
		
		idabbonamento = idabbonamento;
		inizio = inizio;
		fine = fine;
		codf = codf;
		nomecorso = nomecorso;
	}

	public int getIdabbonamento() {
		return idabbonamento;
	}

	public void setIdabbonamento(int idabbonamento) {
		this.idabbonamento = idabbonamento;
	}

	public Date getInizio() {
		return inizio;
	}

	public void setInizio(Date inizio) {
		this.inizio = inizio;
	}

	public Date getFine() {
		return fine;
	}

	public void setFine(Date fine) {
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
