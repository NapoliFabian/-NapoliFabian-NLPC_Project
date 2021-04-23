//DBManager
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
	/*public DBManager() throws Exception{
		urlDB="jdbc:mysql://localhost:3306/gym?serverTimezone=UTC";
		userDB="root";
		pwdDB="";
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
		
	}*/
	public DBManager(String urlDB, String userDB, String pwdDB) throws SQLException {
		super();
		this.urlDB = urlDB;
		this.userDB = userDB;
		this.pwdDB = pwdDB;
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
	
	public ArrayList<Utente> allIstruttori() throws SQLException{
		String cmd = "select * from utente where tipou='I'";
		ArrayList<Utente> istruttori = new ArrayList<Utente>();

		rs=query.executeQuery(cmd);
		Utente s;
		while(rs.next()) {
			s = new Utente(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),
					rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
			istruttori.add(s);
		
		}
		rs.close();
		return istruttori;
	}

	
	public ArrayList<allenamento> allAllenamenti() throws SQLException {
		String cmd = "select * from allenamento";
		ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
		rs=query.executeQuery(cmd);
		allenamento l;
		while(rs.next()) {
			l = new allenamento(rs.getInt(1),rs.getString(2),rs.getString(4),rs.getString(5),rs.getString(3));
			System.out.println(l.toString());
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
	public ArrayList<Utente> allSocio() throws SQLException{
		String cmd = "select * from utente where tipou = 'S'";
		ArrayList<Utente> soci = new ArrayList<Utente>();
		rs=query.executeQuery(cmd);
		Utente s;
		while(rs.next()) {
			String data = String.valueOf(rs.getString(6));
			s = new Utente(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),
					rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
			soci.add(s);
		}
		rs.close();
		return soci;
	}
	public String insertIstruttore(Utente is) throws SQLException {
		String ris = "n";
		String comando = "insert into utente values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = connessione.prepareStatement(comando);
		ps.setString(1,is.getCodf());
		ps.setString(2,is.getNome());
		ps.setString(3,is.getCognome());
		ps.setString(4,is.getTelefono());
		ps.setString(5,is.getSesso());
		ps.setString(6,is.getDataNascita());
		ps.setString(7,"");
		ps.setString(8,"");
		ps.setString(9,"");
		ps.setString(10,"I");
		try {
			ps.executeUpdate();	
			ris="y";
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return ris;
	}
	public int eliminaIStruttore(Utente is) throws SQLException {
		int ris =0;

		String comando = "Delete from utente where utente.codf ='"+is.getCodf()+"'";
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
		String comando = "insert into corso values(?,?,?)";
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
	public String[] Login(String username, String password) {
		String esito= "false";
		String q = "SELECT username,password,tipoU FROM utente WHERE username='"+username+"' AND password='"+password+"';";
		System.out.println(q);
		String vet[];
		vet = new String[2];
		try {
			rs = query.executeQuery(q);
			rs.next();
			String user = rs.getString(1);
			String pw = rs.getString(2);
			String ruolo = rs.getString(3);
			esito="true";
			vet[0] = esito;
			vet[1] = ruolo;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return vet;	
		}
	public ArrayList<abbonamento> allAbbonamenti() throws SQLException {
		ArrayList<abbonamento> abbonamenti = new ArrayList<abbonamento>();
		String cmd = "select * from abbonamento";
		rs = query.executeQuery(cmd);
		abbonamento b;
		while(rs.next()) {
			b = new abbonamento(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
			abbonamenti.add(b);
		}
		rs.close();
		return abbonamenti;
	}
	public void insertAbbonamento(abbonamento ab) throws SQLException {
		String cmd = "insert into abbonamento (inizio,fine,codf,nomecorso,stato)values (?,?,?,?,?)";// cambiato abbonamento
		PreparedStatement ps = connessione.prepareStatement(cmd);
		String stato = "1";
		ps.setString(1,ab.getInizio());
		ps.setString(2,ab.getFine());
		ps.setString(3,ab.getCodf());
		ps.setString(4,ab.getNomecorso());
		ps.setString(5,stato);
		
		try {
			ps.executeUpdate();
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	public void insertSocio(Utente is) throws SQLException {
		String comando = "insert into utente values(?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement ps = connessione.prepareStatement(comando);
		ps.setString(1,is.getCodf());
		ps.setString(2,is.getNome());
		ps.setString(3,is.getCognome());
		ps.setString(4,is.getTelefono());
		ps.setString(5,is.getSesso());
		ps.setString(6,is.getDataNascita());
		ps.setString(7,"");
		ps.setString(8,"");
		ps.setString(9,"");
		ps.setString(10,"S");
		try {
			ps.executeUpdate();	
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	public void eliminaSocio(Utente is) {
	String cmd = "delete from utente where codf= '"+is.getCodf()+"'";
	try {
		query.executeUpdate(cmd);
		
	}catch (Exception e) {
		System.out.println(e.getMessage());
	}	
	}
	public void insertAllenamento(allenamento al) throws SQLException {
		String comando = "insert into allenamento (dataallenamento,durata,Nomecorso,codf) values(?,?,?,?)";
		PreparedStatement ps = connessione.prepareStatement(comando);
		System.out.println("Inserito:"+al.toString());
		ps.setString(1,al.getDataallenamento());
		ps.setString(2,al.getDurata());
		ps.setString(3,al.getNomecorso());
		ps.setString(4,al.getIds());
		try {
			ps.executeUpdate();	
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public void aggiornaAbbonamenti(String data) throws SQLException {
		String update1="update abbonamento set stato='1' where fine>'"+data+"'";
		String update2="update abbonamento set stato='0' where fine<'"+data+"'";
		int st = 0;
		int st1 = 0;
		st=query.executeUpdate(update1);	
		st1=query.executeUpdate(update2);
		int operazioni = st+st1;
		System.out.println("Cambiamenti effettuati: "+operazioni);
	//	query.executeUpdate
		
	}
	
	public void updateSocio(Utente c) throws SQLException
	{
		System.out.println(c.toString()+" nel db");
		String cmd;
		cmd = "update utente set nome=?,cognome=?,telefono=?,sesso=?,datanascita=? where Utente.codf='"+c.getCodf()+"'";
		    PreparedStatement psc;
		    psc = connessione.prepareStatement(cmd);
			
			psc.setString(1,c.getNome());
			psc.setString(2,c.getCognome());
			psc.setString(3,c.getTelefono());
			psc.setString(4,c.getSesso());
			psc.setString(5,c.getDataNascita());
			/*psc.setString(7,c.getPostalCode());
			psc.setString(8,c.getCountry());
			psc.setString(9,c.getPhone());
			psc.setString(10,c.getFax());
			psc.setString(11,c.getId());*/
			psc.executeUpdate();
	}
	
	public void rinnovaAbbonamento(String inizio,String fine,int id) throws SQLException
	{
		//System.out.println(abb.toString()+" nel db");
		String cmd;
		cmd = "update abbonamento set Inizio=?,fine=? where abbonamento.IdAbbonamento="+id;
		    PreparedStatement psc;
		    psc = connessione.prepareStatement(cmd);
			
			
			psc.setString(1,inizio);
			psc.setString(2,fine);
			/*psc.setString(4,c.getSesso());
			psc.setString(5,c.getDataNascita());
			psc.setString(7,c.getPostalCode());
			psc.setString(8,c.getCountry());
			psc.setString(9,c.getPhone());
			psc.setString(10,c.getFax());
			psc.setString(11,c.getId());*/
			psc.executeUpdate();
	}
	
	public boolean registraSocio(String codf,String email,String pw,String username)throws SQLException {
		
		if(codf == "" || email == "" || pw == "")
		return false;
		
		String cmd,codFiscaleDaSql;
		cmd = "SELECT codf from utente where codf = '"+codf+"';";
		rs = query.executeQuery("SELECT EMAIL FROM UTENTE WHERE EMAIL = '"+email+"';");
		int k = 0;
		while(rs.next()) {
			k++;
		}
		if(k>0)return false;
		rs = query.executeQuery("SELECT username FROM UTENTE WHERE username = '"+username+"';");
		int J = 0;
		while(rs.next()) {
			J++;
		}
		if(J>0)return false;
		
		
		
		rs = query.executeQuery(cmd);
		int i = 0;
		while(rs.next()) {
			i++;
			codFiscaleDaSql = rs.getString(1);
		}
		if(i>0) {
			System.out.println("Codice fiscale trovato");
			String cmdRegistra = "update utente set email=?,password=?,username=? where codf = '"+codf+"'";
			 PreparedStatement psc;
			    psc = connessione.prepareStatement(cmdRegistra);
			    psc.setString(1,email);
			    psc.setString(2, pw);
			    psc.setString(3,username);
			    psc.executeUpdate();
			    return true;
			    
			
		}
		return false;
		
		
		
		
	};
	
	

}