package it.meucci;


import java.sql.Date;

public class allenamento {
	private int idallenamento;
	private String dataallenamento;
	private String nomecorso;
	private String ids;
	private String durata;
	
	
	public allenamento() {
		// TODO Auto-generated constructor stub
	}
	
	public allenamento(int idallenamento,String dataallenamento,String nomecorso,String ids,String durata) {
		
		this.idallenamento = idallenamento;
		this.dataallenamento = dataallenamento;
		this.nomecorso = nomecorso;
		this.ids = ids;
		this.durata = durata;
	}

	public int getIdallenamento() {
		return idallenamento;
	}

	public void setIdallenamento(int idallenamento) {
		this.idallenamento = idallenamento;
	}

	public String getDataallenamento() {
		return dataallenamento;
	}

	public void setDataallenamento(String dataallenamento) {
		this.dataallenamento = dataallenamento;
	}

	public String getNomecorso() {
		return nomecorso;
	}

	public void setNomecorso(String nomecorso) {
		this.nomecorso = nomecorso;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

	public String getDurata() {
		return durata;
	}

	public void setDurata(String durata) {
		this.durata = durata;
	}

	@Override
	public String toString() {
		return "allenamento [idallenamento=" + idallenamento + ", dataallenamento=" + dataallenamento + ", nomecorso="
				+ nomecorso + ", ids=" + ids + ", durata=" + durata + "]";
	}
	
	
	
	
	
	
	

	
	
	
	
	
	
	
}
