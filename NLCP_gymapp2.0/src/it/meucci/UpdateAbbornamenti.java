package it.meucci;

import java.util.Date;

public class UpdateAbbornamenti extends Thread implements Runnable{
public void run() {
	DBManager db;
	try {
		while(true) {
		System.out.println("Aggiornamento abbonamenti in corso");
		db = new DBManager();
		Date dat = new Date();
		//Restituzione delle informazioni
		int mese =  dat.getMonth()+1;
		int anno = dat.getYear()+1900;
		int g=dat.getDate();
		String data = anno+"-"+mese+"-"+g;
		db.aggiornaAbbonamenti(data);
		System.out.println("Aggiornamento completato");
		//Thread.sleep(1000);
		//5 minuti 300000
		} 
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	
}
}


