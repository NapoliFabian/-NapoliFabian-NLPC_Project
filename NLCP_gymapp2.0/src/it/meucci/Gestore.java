package it.meucci;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Gestore
 */
@WebServlet("/Gestore")
public class Gestore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gestore() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// comandi per stampare tutto
		String cmd = request.getParameter("cmd");
		System.out.println(cmd);
		try {
		GestoreFile load = new GestoreFile();
		String[] datidb = load.DBSettings();
		DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
		//STAMPA ISTRUTTORI
		if(cmd.equals("allis")) {
			ArrayList<Utente> istruttori = new ArrayList<Utente>();
			try {
			//	db = new DBManager();
				istruttori = db.allIstruttori();
				request.getSession().setAttribute("ELENCO_ISTRUTTORI",istruttori);
				response.sendRedirect("Istruttore.jsp");
						
			} catch (Exception e) {
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
				
				System.out.println(e.getMessage());
			}
			
		}//FINE
		//STAMPA ALLENAMENTI
		if(cmd.equals("allal")) {
			ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
			try {
				//db = new DBManager();
				allenamenti= db.allAllenamenti();
				request.getSession().setAttribute("ELENCO_ALLENAMENTI",allenamenti);
				response.sendRedirect("allenamento.jsp");
						
			} catch (Exception e) {
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
				
				System.out.println(e.getMessage());
			}
			
		}//FINE
		//STAMPA SOCI
		if(cmd.equals("allsoc")) {
			ArrayList<Utente> soci = new ArrayList<Utente>();
			try {
			//	db = new DBManager();
				soci= db.allSocio();
				request.getSession().setAttribute("ELENCO_SOCI",soci);
				response.sendRedirect("socio.jsp");
						
			} catch (Exception e) {
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
				
				System.out.println(e.getMessage());
			}
			
		}//FINE
		//STAMPA CORSI
		if(cmd.equals("allco")) {
			ArrayList<Corso> corsi = new ArrayList<Corso>();
			try {
			//	db = new DBManager();
				corsi = db.allCorsi();
				request.getSession().setAttribute("ELENCO_CORSI",corsi);
				response.sendRedirect("Corso.jsp");
			} catch (Exception e) {
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
			
			}
			
			
		}//FINE
		//STAMPA ABBONAMENTI
		if(cmd.equals("allabb")) {
			ArrayList<abbonamento> abbonamenti = new ArrayList<abbonamento>();
			try {
			//	db = new DBManager();
				abbonamenti= db.allAbbonamenti();
				request.getSession().setAttribute("ELENCO_ABBONAMENTI",abbonamenti);
				response.sendRedirect("abbonamento.jsp");
			}
			catch (Exception e) {
				
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
				
				System.out.println(e.getMessage());
			}
			
			
		}//FINE
		//////////////////////////////////////////////////////////////////////////////////////////
		//comandi per dettaglio
		//DETTAGKU ISTRUTTORI
		if(cmd.equals("dettagliois")) {
			String id = request.getParameter("id");
			ArrayList<Utente> istruttori = new ArrayList<Utente>();
			istruttori =(ArrayList<Utente>)request.getSession().getAttribute("ELENCO_ISTRUTTORI");
			Utente is;
			for(int i=0;i<istruttori.size();i++) {
				is = istruttori.get(i);
				if(is.getCodf().equals(id)) {
				request.getSession().setAttribute("ISTRUTTORE_DETTAGLIO",is);	
				response.sendRedirect("dettaglioistruttore.jsp");
				}
			}//fine for
		}// //FINE
		//DETTAGLIO ABBONAMENTO
		if(cmd.equals("dettaglioabb")) {
			String id = request.getParameter("id");
			int id1 = Integer.parseInt(id);
			ArrayList<abbonamento> abbonamenti = new ArrayList<abbonamento>();
			abbonamenti =(ArrayList<abbonamento> )request.getSession().getAttribute("ELENCO_ABBONAMENTI");
			abbonamento is;
			for(int i=0;i<abbonamenti.size();i++) {
				is = abbonamenti.get(i);
				if(is.getIdabbonamento()==id1) {
				request.getSession().setAttribute("ABBONAMENTO_DETTAGLIO",is);	
				response.sendRedirect("dettaglioabbonamento.jsp");
				}
			}//fine for
		}//FINE
		//DETTAGLIO ALLENAMENTO
		if(cmd.equals("dettaglioall")) {
			String id = request.getParameter("id");
			int id1 = Integer.parseInt(id);
			ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
			allenamenti =(ArrayList<allenamento> )request.getSession().getAttribute("ELENCO_ALLENAMENTI");
			allenamento is;
			for(int i=0;i<allenamenti.size();i++) {
				is = allenamenti.get(i);
				if(is.getIdallenamento()==id1) {
				request.getSession().setAttribute("ALLENAMENTO_DETTAGLIO",is);	
				response.sendRedirect("dettaglioallenamento.jsp");
				}
			}//fine for
		}//FINE
		//DETTAGLIO SOCIO
		if(cmd.equals("dettaglioso")) {
			String codf = request.getParameter("id");
			ArrayList<Utente> soci = new ArrayList<Utente>();
			soci =(ArrayList<Utente> )request.getSession().getAttribute("ELENCO_SOCI");
			Utente is;
			for(int i=0;i<soci.size();i++) {
				is = soci.get(i);
				if(is.getCodf().equals(codf)) {
				request.getSession().setAttribute("SOCIO_DETTAGLIO",is);	
				response.sendRedirect("dettagliosocio.jsp");
				}
			}
		}//FINE
		
		
		
		///////////////////////////////////////////////////////////////////////////////////////////
		//Comandi elimina
		if(cmd.equals("eliminais")) {
			String id = request.getParameter("id");
			ArrayList<Utente> istruttori = new ArrayList<Utente>();
			istruttori =(ArrayList<Utente>)request.getSession().getAttribute("ELENCO_ISTRUTTORI");
			Utente is;
			for(int i=0;i<istruttori.size();i++) {
				is = istruttori.get(i);
				if(is.getCodf().equals(id)){
				request.getSession().setAttribute("ISTRUTTORE_ELIMINA",is);	
				response.sendRedirect("confermais.jsp");
				}
			}	
		}
		if(cmd.equals("confermais")) {
			Utente is =(Utente)request.getSession().getAttribute("ISTRUTTORE_ELIMINA");
			try {
			//	db = new DBManager();
				db.eliminaIStruttore(is);
				request.getSession().removeAttribute("ELENCO_ISTRUTTORI");
				ArrayList<Utente> istruttori = new ArrayList<Utente>();
				istruttori = db.allIstruttori();
				request.getSession().setAttribute("ELENCO_ISTRUTTORI",istruttori);
				response.sendRedirect("Istruttore.jsp");
			} catch (Exception e) {
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
				
				System.out.println(e.getMessage());
			}
		}
		if(cmd.equals("noelis")) {
			request.getSession().removeAttribute("ISTRUTTORE_ELIMINA");
			response.sendRedirect("Istruttore.jsp");
		}
		if(cmd.equals("eliminaso")) {
			String codf = request.getParameter("id");	
			ArrayList<Utente> soci = new ArrayList<Utente>();
			soci =(ArrayList<Utente> )request.getSession().getAttribute("ELENCO_SOCI");
			Utente is;
			for(int i=0;i<soci.size();i++) {
				is = soci.get(i);
				if(is.getCodf().equals(codf)) {
				request.getSession().setAttribute("SOCIO_ELIMINA",is);	
				response.sendRedirect("confermaso.jsp");
				}
			}//fine for
			
		}
		if(cmd.equals("confermaso")) {
			Utente is =(Utente)request.getSession().getAttribute("SOCIO_ELIMINA");
			try {
			//	db = new DBManager();
				db.eliminaSocio(is);
				request.getSession().removeAttribute("ELENCO_SOCI");
				ArrayList<Utente> istruttori = new ArrayList<Utente>();
				istruttori = db.allSocio();
				request.getSession().setAttribute("ELENCO_SOCI",istruttori);
				response.sendRedirect("socio.jsp");
			} catch (Exception e) {
				
				String errore = "";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
				
				System.out.println(e.getMessage());
			}
		}
		if(cmd.equals("updateso")) {
			String codf = request.getParameter("id");
			ArrayList<Utente> soci = new ArrayList<Utente>();
			soci =(ArrayList<Utente> )request.getSession().getAttribute("ELENCO_SOCI");
			Utente is;
			for(int i=0;i<soci.size();i++) {
				is = soci.get(i);
				if(is.getCodf().equals(codf)) {
				request.getSession().setAttribute("SOCIO_CAMBIA",is);	
				response.sendRedirect("updatesocio.jsp");
				}
			}
		}
		//////////////////////////////////////////////////////////////////////////////////////////////
		//comandi aggiorna
		}catch (Exception e) {
			String errore = "ERRORE ALL AVVIO DEL DB";
			request.getSession().setAttribute("ERROR",errore);
			response.sendRedirect("errore.jsp");
		}

		
			
			
			
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String submit = request.getParameter("INSERT");	
		System.out.println(submit);
		try {
			
			GestoreFile load = new GestoreFile();
			String[] datidb = load.DBSettings();
			DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
			
		// INSERT ISTRUTTORE
		if(submit.equals("INSERT_ISTRUTTORE")) {
	try {
	//	DBManager db = new DBManager();
		String id = request.getParameter("IdIstruttore");
		String nome = request.getParameter("Nome");
		String cognome = request.getParameter("Cognome");
		String telefono = request.getParameter("Telefono");
		String sesso = request.getParameter("Sesso");
		String data = request.getParameter("DataDiNascita");
		
		Utente i = new Utente(id, nome, cognome, telefono, sesso,data,"","","","I");
		db.insertIstruttore(i);
		request.getSession().removeAttribute("ELENCO_ISTRUTTORI");
		ArrayList<Utente>istruttori = new ArrayList<Utente>();
		istruttori = db.allIstruttori();
		request.getSession().setAttribute("ELENCO_ISTRUTTORI", istruttori);
		response.sendRedirect("Istruttore.jsp");
	} catch (Exception e) {
		
		String errore = "";
		request.getSession().setAttribute("ERROR",errore);
		response.sendRedirect("errore.jsp");
		
		System.out.println(e.getMessage());
	}	
	}
	// INSERT CORSO
	if(submit.equals("INSERT_CORSO")) {
		String nome = request.getParameter("NomeCorso");
		String prezzo = request.getParameter("Prezzo");
		String desc = request.getParameter("Descrizione");
		int p = Integer.parseInt(prezzo);
		Corso c = new Corso(nome,p,desc);
	//	DBManager db;
		try {
	//		db = new DBManager();
			db.insertCorso(c);
			request.getSession().removeAttribute("ELENCO_CORSI");
			ArrayList<Corso> corsi = new ArrayList<Corso>();
			corsi = db.allCorsi();
			request.getSession().setAttribute("ELENCO_CORSI",corsi);
			response.sendRedirect("Corso.jsp");
		} catch (Exception e) {
			
			String errore = "";
			request.getSession().setAttribute("ERROR",errore);
			response.sendRedirect("errore.jsp");
			
			// TODO: handle exception
		}
	}
	//INSERT ABBONAMENTO
	if(submit.equals("INSERT_ABBONAMENTO")) {
	String id = request.getParameter("IdAbbonamento");
	String inizio = request.getParameter("inizioabb");
	String fine = request.getParameter("fineabb");
	String codf = request.getParameter("codf");
	String nomec =request.getParameter("NomeCorso");
	System.out.println(id); System.out.println(inizio);
		int id1 = Integer.parseInt(id);
		abbonamento ab = new abbonamento(id1,inizio,fine,codf,nomec);
		System.out.println(ab.toString());
		try {
	//	DBManager db = new DBManager();
		db.insertAbbonamento(ab);
		request.getSession().removeAttribute("ELENCO_ABBONAMENTI");
		ArrayList<abbonamento> abbonamenti = db.allAbbonamenti();
		request.getSession().setAttribute("ELENCO_ABBONAMENTI",abbonamenti);
		response.sendRedirect("abbonamento.jsp");
	} catch (Exception e) {
		
		String errore = "";
		request.getSession().setAttribute("ERROR",errore);
		response.sendRedirect("errore.jsp");
		
		System.out.println(e.getMessage());
	}
	}
	//CERCA ISTRUTTORE
	if(submit.equals("cercaIS")) {
		String cognome = request.getParameter("istruttore");
		ArrayList<Utente> istruttori = new ArrayList<Utente>();
		ArrayList<Utente> ricerca = new ArrayList<Utente>();
		Utente is;
		System.out.println(cognome);
		istruttori = (ArrayList<Utente>)request.getSession().getAttribute("ELENCO_ISTRUTTORI");
		for(int i=0;i<istruttori.size();i++) 
	    {
			is = istruttori.get(i);
			System.out.println(is.getCognome());
			if(is.getCognome().equals(cognome)){
				ricerca.add(is);
			}
	    }
		request.getSession().removeAttribute("ISTRUTTORI_CERCATI");
		request.getSession().setAttribute("ISTRUTTORI_CERCATI",ricerca);
		response.sendRedirect("Istruttore.jsp");
	}
	//INSERT ISTRUTTORE
	if(submit.equals("INSERT_SOCIO")) {
		String codf = request.getParameter("codf");
		String nome = request.getParameter("Nome");
		String cognome = request.getParameter("Cognome");
		String tel = request.getParameter("Telefono");
		String s = request.getParameter("Sesso");
		String datan = request.getParameter("DataDiNascita");
		Utente soc = new Utente(codf, nome, cognome, tel,s,datan,"","","","S");
		try {
		//	DBManager db = new DBManager();
			db.insertSocio(soc);
			request.getSession().removeAttribute("ELENCO_SOCI");
			ArrayList<Utente> soci = db.allSocio();
			request.getSession().setAttribute("ELENCO_SOCI",soci);
			response.sendRedirect("socio.jsp");
		} catch (Exception e) {
			
			String errore = "";
			request.getSession().setAttribute("ERROR",errore);
			response.sendRedirect("errore.jsp");
			
			System.out.println(e.getMessage());
		}
	}
	//INSERT ALLENAMENTO
	if(submit.equals("INSERT_ALLENAMENTO")) {
		String id = request.getParameter("idAllenamento");
		String data = request.getParameter("dataAllenamento");
		String nomec = request.getParameter("nomeCorso");
		String ids = request.getParameter("idIstruttore");
		String t = request.getParameter("durataAllenamento");
		int id1 = Integer.parseInt(id);
		allenamento al = new allenamento(id1, data, nomec, ids,t);
		try {
		//	DBManager db = new DBManager();
			db.insertAllenamento(al);
			request.getSession().removeAttribute("ELENCO_ALLENAMENTI");
			ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
			allenamenti = db.allAllenamenti();
			request.getSession().setAttribute("ELENCO_ALLENAMENTI",allenamenti);
			response.sendRedirect("allenamento.jsp");
		} catch (Exception e) {
			
			
			String errore = "";
			request.getSession().setAttribute("ERROR",errore);
			response.sendRedirect("errore.jsp");
			
			// TODO: handle exception
		}
	}
	if(submit.equals("AGGIORNA SOCIO")) {
		try {
			Utente c;
		    c = new Utente(request.getParameter("codf"),
		    		request.getParameter("Nome"),
		    		request.getParameter("Cognome"),
		    		request.getParameter("Telefono"),
		    		request.getParameter("Sesso"),
		    		request.getParameter("DataNascita"),"","","","");
		    
		    //	DBManager db;
		   // 	db = new DBManager();
		    	System.out.println(c.toString()+" nella servlet");
		    	db.updateSocio(c);
		    	request.getSession().removeAttribute("ELENCO_SOCI");
		    	ArrayList<Utente> elenco= new ArrayList<Utente>();
		    	elenco =db.allSocio();
		    	request.getSession().setAttribute("ELENCO_SOCI", elenco);
		    	response.sendRedirect("socio.jsp");
		}
		    catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		}catch (Exception e) {
			String errore = "ERRORE ALL AVVIO DEL DB";
			request.getSession().setAttribute("ERROR",errore);
			response.sendRedirect("errore.jsp");
		}
}
}