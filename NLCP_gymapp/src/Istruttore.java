import java.util.Date;

public class Istruttore {
	private String ids;
	private String nome;
	private String cognome;
	private String telefono;
	private String sesso;
	private Date datanascita;
	
	
	public Istruttore() {
		super();
	}
    

	public Istruttore(String ids, String nome, String cognome, String telefono, String sesso, Date datanascita) {
		super();
		this.ids = ids;
		this.nome = nome;
		this.cognome = cognome;
		this.telefono = telefono;
		this.sesso = sesso;
		this.datanascita = datanascita;
	}


	public String getIds() {
		return ids;
	}


	public void setIds(String ids) {
		this.ids = ids;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCognome() {
		return cognome;
	}


	public void setCognome(String cognome) {
		this.cognome = cognome;
	}


	public String getTelefono() {
		return telefono;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public String getSesso() {
		return sesso;
	}


	public void setSesso(String sesso) {
		this.sesso = sesso;
	}


	public Date getDatanascita() {
		return datanascita;
	}


	public void setDatanascita(Date datanascita) {
		this.datanascita = datanascita;
	}
	
	
}
