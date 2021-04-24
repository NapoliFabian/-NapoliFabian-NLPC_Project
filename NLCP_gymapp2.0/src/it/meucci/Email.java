package it.meucci;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class Email {
	private String da;
	private String pas;
/*	public static void main(String[] args) {
	
		String[] dest = {destinatario};
        String oggetto = "Esercizio java con email";
        String mex = "Questa email è stata inviata con Java Email";
        
        mandaEmail(da,pas,dest,oggetto,mex);
	}*/
	//CAMBIARE QUI L'EMAIL
	//CAMBIARE QUI L'EMAIL
	//CAMBIARE QUI L'EMAIL
	//CAMBIARE QUI L'EMAIL
	public Email() {
		 da = "";
		 pas = "";
	}
public  void mandaEmail(String[] dest,String cognome,String corso,int idabb) {
	String og = "GYM APP-AVVISO";
	String mex =  "Signor "+cognome+",servizio RemindMe,il suo abbonamento per il corso "+corso+" è scaduto."
			+ "Si prega di effettuare il rinnovo in palestra appena.Buonagiornata!"
			+ "Cod abbonamento:"+idabb +";";
			
	Properties props = System.getProperties();
	String host = "smtp.gmail.com";
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", host);
	props.put("mail.smtp.user",da);
	props.put("mail.smtp.password",pas);
	props.put("mail.smtp.port","587");
	props.put("mail.smtp.autch","true");
	Session ses = Session.getDefaultInstance(props);
	Message mess = new MimeMessage(ses);
	
	try {
		mess.setFrom(new InternetAddress(da));
		InternetAddress[] indirizzodest = new InternetAddress[dest.length];
		for (int i = 0; i < dest.length; i++) {
			indirizzodest[i] = new InternetAddress(dest[i]);
		}
		for (int i = 0; i < indirizzodest.length; i++) {
			mess.addRecipient(Message.RecipientType.TO,indirizzodest[i]);
		}
		mess.setSubject(og);
		mess.setText(mex);
		Transport trasporto = ses.getTransport("smtp");
		trasporto.connect(host,da,pas);
		trasporto.sendMessage(mess, mess.getAllRecipients());
		trasporto.close();
		
	}
	
	catch (Exception e) {
		System.err.println("Error on sending the email"+e.getMessage());
	}
	System.out.println("Email inviata!");
}
}
