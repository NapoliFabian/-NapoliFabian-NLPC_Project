package it.meucci;
import java.util.Date;

public class socio{
	
private String codf;
private String nome;
private String cognome;
private String telefono;
private String sesso;
private String datanascita;
public socio() {
	super();
}
public socio(String codf, String nome, String cognome, String telefono, String sesso, String datanascita) {
	super();
	this.codf = codf;
	this.nome = nome;
	this.cognome = cognome;
	this.telefono = telefono;
	this.sesso = sesso;
	this.datanascita = datanascita;
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
public String getDatanascita() {
	return datanascita;
}
public void setDatanascita(String datanascita) {
	this.datanascita = datanascita;
}


}