package it.meucci;

public class Utente {
	String codf;
	String nome;
	String cognome;
	String telefono;
	String sesso;
	String dataNascita;
	String username;
	String email ;
	String password;
	String tipou;
	
	public Utente() {
		super();
	}


	public Utente(String codf, String nome, String cognome, String telefono, String sesso, String dataNascita,
			String username, String email, String password, String tipou) {
		super();
		this.codf = codf;
		this.nome = nome;
		this.cognome = cognome;
		this.telefono = telefono;
		this.sesso = sesso;
		this.dataNascita = dataNascita;
		this.username = username;
		this.email = email;
		this.password = password;
		this.tipou = tipou;
	}
	
	
	public String getCodf() {
		return codf;
	}

	public void setCodf(String codf) {
		this.codf = codf;
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

	public String getDataNascita() {
		return dataNascita;
	}

	public void setDataNascita(String dataNascita) {
		this.dataNascita = dataNascita;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTipou() {
		return tipou;
	}

	public void setTipou(String tipou) {
		this.tipou = tipou;
	}
	
	
	
	@Override
	public String toString() {
		return "Utente [codf=" + codf + ", nome=" + nome + ", cognome=" + cognome + ", telefono=" + telefono
				+ ", sesso=" + sesso + ", dataNascita=" + dataNascita + ", username=" + username + ", email=" + email
				+ ", password=" + password + ", tipou=" + tipou + "]";
	}
	
}
