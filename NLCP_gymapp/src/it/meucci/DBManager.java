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
		urlDB="jdbc:mysql://localhost:3306/Northwind?serverTimezone=UTC";
		userDB="root";
		pwdDB=null;
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
}