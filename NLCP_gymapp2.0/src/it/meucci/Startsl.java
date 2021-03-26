package it.meucci;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

/**
 * Servlet implementation class Startsl
 */
@WebServlet("/Startsl")
public class Startsl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Startsl() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("Init Servlet partita");
		try {
			System.out.println("Controllo abbonamenti in corso......");
			Date dat = new Date();
			//Restituzione delle informazioni
			int mese =  dat.getMonth()+1;
			int anno = dat.getYear()+1900;
			int g=dat.getDate();
			String data = anno+"-"+mese+"-"+g;
			GestoreFile load = new GestoreFile();
			String[] datidb = load.DBSettings();
			DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
			db.aggiornaAbbonamenti(data);
			UpdateAbbornamenti aggiorna = new UpdateAbbornamenti();
			aggiorna.start();
		} catch (Exception e) {
			System.out.println(e.getMessage()+e.getStackTrace()+e.getCause()+e.getLocalizedMessage());
		}
		
	}

}
