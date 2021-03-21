package it.meucci;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Vector;
public class DBManager {

	private Connection connessione;
	private Statement query;
	private String urlDB="";
	private String userDB;
	private String pwdDB;
	private ResultSet rs;
	public DBManager() throws Exception{
		urlDB="jdbc:mysql://localhost:3306/gym?serverTimezone=UTC";
		userDB="root";
		pwdDB="cristian02";
		//Creazione della connessione
		//Registrazione dei Driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println(e.getMessage());
		}
		
		System.out.println("Registrazione driver sql effettuata");
		connessione=DriverManager.getConnection(urlDB, userDB, pwdDB);
		System.out.println("Connessione instaurata con il database nortwind");
		query = connessione.createStatement();
		
	}
	public ArrayList<Istruttore> allIstruttori() throws SQLException{
		String cmd = "select * from Istruttore";
		ArrayList<Istruttore> istruttori = new ArrayList<Istruttore>();
		rs=query.executeQuery(cmd);
		Istruttore s;
		while(rs.next()) {
			s = new Istruttore(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
			istruttori.add(s);
		
		}
		rs.close();
		return istruttori;
	}
	public ArrayList<allenamento> allAllenamenti() throws SQLException {
		String cmd = "select * from Allenamento";
		ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
		rs=query.executeQuery(cmd);
		allenamento l;
		while(rs.next()) {
			l = new allenamento(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getString(4),rs.getString(5));
			allenamenti.add(l);
		
		}
		rs.close();
		return allenamenti;
	}
	public ArrayList<Corso> allCorsi() throws SQLException {
		String cmd = "select * from corso";
		ArrayList<Corso> corsi = new ArrayList<Corso>();
		rs=query.executeQuery(cmd);
		Corso c;
		while(rs.next()) {
			c = new Corso(rs.getString(1),rs.getInt(2),rs.getString(3));
			corsi.add(c);
		}
		rs.close();
		return corsi;
	}
	public ArrayList<socio> allSocio() throws SQLException{
		String cmd = "select * from socio";
		ArrayList<socio> soci = new ArrayList<socio>();
		rs=query.executeQuery(cmd);
		socio s;
		while(rs.next()) {
			s = new socio(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
			soci.add(s);
		}
		rs.close();
		return soci;
	}
	public String insertIstruttore(Istruttore is) throws SQLException {
		String ris = "n";
		String comando = "insert into Istruttore values(?,?,?,?,?,?)";
		PreparedStatement ps = connessione.prepareStatement(comando);
		System.out.println(is.getIds());
		ps.setString(1,is.getIds());
		ps.setString(2,is.getNome());
		ps.setString(3,is.getCognome());
		ps.setString(4,is.getTelefono());
		ps.setString(5,is.getSesso());
		ps.setString(6,is.getDatanascita());
		try {
			ps.executeUpdate();	
			ris="y";
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return ris;
	}
	public int eliminaIStruttore(Istruttore is) throws SQLException {
		int ris =0;
		String comando = "Delete from Istruttore where Istruttore.ids ='"+is.getIds()+"'";
		System.out.println(comando);
		try {
			query.executeUpdate(comando);
			ris=1;
		}catch (Exception e) {
			ris=0;
			System.out.println(e.getMessage());
		}
		return ris;
	}
	public int insertCorso(Corso c) throws SQLException {
		String comando = "insert into Corso values(?,?,?)";
		int ris =0;
		PreparedStatement ps = connessione.prepareStatement(comando);
		ps.setString(1, c.getNomecorso());
		ps.setInt(2,c.getPrezzo());
		ps.setString(3, c.getDescrizione());
		try {
			ps.executeUpdate();	
			ris=1;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return ris;
	}

	
	
	public boolean Login(String username, String password) {
		boolean esito= false;
		String q = "SELECT * FROM admin WHERE username='"+username+"' AND password='"+password+"';";
		System.out.println(q);
		try {
			rs = query.executeQuery(q);
			rs.next();
			String user = rs.getString(1);
			String pw = rs.getString(2);
			esito=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return esito;	
		}
	
	
	public ArrayList<abbonamento> allAbbonamenti() throws SQLException {
		ArrayList<abbonamento> abbonamenti = new ArrayList<abbonamento>();
		String cmd = "select * from abbonamento";
		rs = query.executeQuery(cmd);
		abbonamento b;
		while(rs.next()) {
			b = new abbonamento(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			abbonamenti.add(b);
		}
		rs.close();
		return abbonamenti;
	}
	public void insertAbbonamento(abbonamento ab) throws SQLException {
		String cmd = "insert into abbonamento values(?,?,?,?,?)";
		PreparedStatement ps = connessione.prepareStatement(cmd);
		ps.setInt(1,ab.getIdabbonamento());
		ps.setString(2,ab.getInizio());
		ps.setString(3,ab.getFine());
		ps.setString(4,ab.getCodf());
		ps.setString(5,ab.getNomecorso());
		ps.execute(cmd);
		
	}
	public void insertSocio(socio soc) {
		String cmd = "insert into socio values(?,?,?,?,?)";
		
	}
}