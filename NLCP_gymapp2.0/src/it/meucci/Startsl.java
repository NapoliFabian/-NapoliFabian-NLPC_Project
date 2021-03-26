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
			//InputStream input = getClass().getResourceAsStream("dbconf.txt");
			String data = anno+"-"+mese+"-"+g;
			DBManager db = new DBManager();
			db.aggiornaAbbonamenti(data);
			//System.out.println(System.getProperty("user.dir"));
			UpdateAbbornamenti aggiorna = new UpdateAbbornamenti();
			String email = null;
			/*try {
				URL percorso = getServletContext().geta
				//String percorso=".config";
				String file = String.valueOf(percorso);
				System.out.println(percorso);
			//File file = new File(percorso+"/dbconf.txt");
			FileReader fr = new FileReader(file);
			BufferedReader br = new BufferedReader(fr);
			email = br.readLine();
			System.out.println("Nel file ho letto:"+ email);
			br.close();
			} catch(IOException e) {
			System.out.println(e.getMessage());
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}*/
			try {
				System.out.println(System.getProperty("user.dir"));
				//System.out.println(new File("").getCanonicalPath());
				File file = new File("src/it/meucci/prova2.txt");
				file.createNewFile();
				System.out.println("File creato");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			aggiorna.start();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
