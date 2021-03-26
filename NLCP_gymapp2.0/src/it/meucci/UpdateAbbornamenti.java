package it.meucci;

import java.util.Date;

public class UpdateAbbornamenti extends Thread implements Runnable{
public void run() {
	try {
		while(true) {
		System.out.println("Aggiornamento abbonamenti in corso");
		GestoreFile load = new GestoreFile();
		String[] datidb = load.DBSettings();
		DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
		Date dat = new Date();
		//Restituzione delle informazioni
		int mese =  dat.getMonth()+1;
		int anno = dat.getYear()+1900;
		int g=dat.getDate();
		String data = anno+"-"+mese+"-"+g;
		db.aggiornaAbbonamenti(data);
		System.out.println("Aggiornamento completato");
		Thread.sleep(300000);
		//5 minuti 300000
		} 
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	
}
}


