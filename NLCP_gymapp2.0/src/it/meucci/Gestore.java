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
		DBManager db;
		if(cmd.equals("allis")) {
			ArrayList<Istruttore> istruttori = new ArrayList<Istruttore>();
			try {
				db = new DBManager();
				istruttori = db.allIstruttori();
				request.getSession().setAttribute("ELENCO_ISTRUTTORI",istruttori);
				response.sendRedirect("Istruttore.jsp");
						
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
		if(cmd.equals("allal")) {
			ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
			try {
				db = new DBManager();
				allenamenti= db.allAllenamenti();
				request.getSession().setAttribute("ELENCO_ALLENAMENTI",allenamenti);
				response.sendRedirect("allenamento.jsp");
						
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
		if(cmd.equals("allsoc")) {
			ArrayList<socio> soci = new ArrayList<socio>();
			try {
				db = new DBManager();
				soci= db.allSocio();
				request.getSession().setAttribute("ELENCO_SOCI",soci);
				response.sendRedirect("socio.jsp");
						
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
		if(cmd.equals("allco")) {
			ArrayList<Corso> corsi = new ArrayList<Corso>();
			try {
				db = new DBManager();
				corsi = db.allCorsi();
				request.getSession().setAttribute("ELENCO_CORSI",corsi);
				response.sendRedirect("Corso.jsp");
			} catch (Exception e) {
			
			}
		}
		if(cmd.equals("allabb")) {
			ArrayList<abbonamento> abbonamenti = new ArrayList<abbonamento>();
			try {
				db = new DBManager();
				abbonamenti= db.allAbbonamenti();
				request.getSession().setAttribute("ELENCO_ABBONAMENTI",abbonamenti);
				response.sendRedirect("abbonamento.jsp");
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		//////////////////////////////////////////////////////////////////////////////////////////
		//comandi per dettaglio
		if(cmd.equals("dettagliois")) {
			String id = request.getParameter("id");
			ArrayList<Istruttore> istruttori = new ArrayList<Istruttore>();
			istruttori =(ArrayList<Istruttore>)request.getSession().getAttribute("ELENCO_ISTRUTTORI");
		    Istruttore is;
			for(int i=0;i<istruttori.size();i++) {
				is = istruttori.get(i);
				if(is.getIds().equals(id)) {
				request.getSession().setAttribute("ISTRUTTORE_DETTAGLIO",is);	
				response.sendRedirect("dettaglioistruttore.jsp");
				}
			}//fine for
		}// fine if
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
		}
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
		}
		if(cmd.equals("dettaglioso")) {
			String codf = request.getParameter("id");
			ArrayList<socio> soci = new ArrayList<socio>();
			soci =(ArrayList<socio> )request.getSession().getAttribute("ELENCO_SOCI");
			socio is;
			for(int i=0;i<soci.size();i++) {
				is = soci.get(i);
				if(is.getCodf().equals(codf)) {
				request.getSession().setAttribute("SOCIO_DETTAGLIO",is);	
				response.sendRedirect("dettagliosocio.jsp");
				}
			}//fine for
		}
		
		//fine if
		
		///////////////////////////////////////////////////////////////////////////////////////////
		//Comandi elimina
		if(cmd.equals("eliminais")) {
			String id = request.getParameter("id");
			ArrayList<Istruttore> istruttori = new ArrayList<Istruttore>();
			istruttori =(ArrayList<Istruttore>)request.getSession().getAttribute("ELENCO_ISTRUTTORI");
		    Istruttore is;
			for(int i=0;i<istruttori.size();i++) {
				is = istruttori.get(i);
				if(is.getIds().equals(id)) {
				request.getSession().setAttribute("ISTRUTTORE_ELIMINA",is);	
				response.sendRedirect("confermais.jsp");
				}
			}	
		}
		if(cmd.equals("confermais")) {
			Istruttore is =(Istruttore)request.getSession().getAttribute("ISTRUTTORE_ELIMINA");
			try {
				db = new DBManager();
				db.eliminaIStruttore(is);
				request.getSession().removeAttribute("ELENCO_ISTRUTTORI");
				ArrayList<Istruttore> istruttori = new ArrayList<Istruttore>();
				istruttori = db.allIstruttori();
				request.getSession().setAttribute("ELENCO_ISTRUTTORI",istruttori);
				response.sendRedirect("Istruttore.jsp");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		if(cmd.equals("noelis")) {
			request.getSession().removeAttribute("ISTRUTTORE_ELIMINA");
			response.sendRedirect("Istruttore.jsp");
		}
		if(cmd.equals("eliminaso")) {
			String codf = request.getParameter("id");	
			ArrayList<socio> soci = new ArrayList<socio>();
			soci =(ArrayList<socio> )request.getSession().getAttribute("ELENCO_SOCI");
			socio is;
			for(int i=0;i<soci.size();i++) {
				is = soci.get(i);
				if(is.getCodf().equals(codf)) {
				request.getSession().setAttribute("SOCIO_ELIMINA",is);	
				response.sendRedirect("confermaso.jsp");
				}
			}//fine for
			
		}
		if(cmd.equals("confermaso")) {
			socio is =(socio)request.getSession().getAttribute("SOCIO_ELIMINA");
			try {
				db = new DBManager();
				db.eliminaSocio(is);
				request.getSession().removeAttribute("ELENCO_SOCI");
				ArrayList<socio> istruttori = new ArrayList<socio>();
				istruttori = db.allSocio();
				request.getSession().setAttribute("ELENCO_SOCI",istruttori);
				response.sendRedirect("socio.jsp");
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
		
		//////////////////////////////////////////////////////////////////////////////////////////////
		//comandi aggiorna
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String submit = request.getParameter("INSERT");	
		if(submit.equals("INSERT_ISTRUTTORE")) {
	try {
		DBManager db = new DBManager();
		String id = request.getParameter("IdIstruttore");
		String nome = request.getParameter("Nome");
		String cognome = request.getParameter("Cognome");
		String telefono = request.getParameter("Telefono");
		String sesso = request.getParameter("Sesso");
		String data = request.getParameter("DataDiNascita");
		
		Istruttore i = new Istruttore(id, nome, cognome, telefono, sesso,data);
		db.insertIstruttore(i);
		request.getSession().removeAttribute("ELENCO_ISTRUTTORI");
		ArrayList<Istruttore>istruttori = new ArrayList<Istruttore>();
		istruttori = db.allIstruttori();
		request.getSession().setAttribute("ELENCO_ISTRUTTORI", istruttori);
		response.sendRedirect("Istruttore.jsp");
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}	
	}
	//fine insert istruttore
	if(submit.equals("INSERT_CORSO")) {
		String nome = request.getParameter("NomeCorso");
		String prezzo = request.getParameter("Prezzo");
		String desc = request.getParameter("Descrizione");
		int p = Integer.parseInt(prezzo);
		Corso c = new Corso(nome,p,desc);
		DBManager db;
		try {
			db = new DBManager();
			db.insertCorso(c);
			request.getSession().removeAttribute("ELENCO_CORSI");
			ArrayList<Corso> corsi = new ArrayList<Corso>();
			corsi = db.allCorsi();
			request.getSession().setAttribute("ELENCO_CORSI",corsi);
			response.sendRedirect("Corso.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
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
		DBManager db = new DBManager();
		db.insertAbbonamento(ab);
		request.getSession().removeAttribute("ELENCO_ABBONAMENTI");
		ArrayList<abbonamento> abbonamenti = db.allAbbonamenti();
		request.getSession().setAttribute("ELENCO_ABBONAMENTI",abbonamenti);
		response.sendRedirect("abbonamento.jsp");
	} catch (Exception e) {
		System.out.println(e.getMessage());
	}
	}
	if(submit.equals("cercaIS")) {
		String cognome = request.getParameter("istruttore");
		ArrayList<Istruttore> istruttori = new ArrayList<Istruttore>();
		ArrayList<Istruttore> ricerca = new ArrayList<Istruttore>();
		Istruttore is;
		System.out.println(cognome);
		istruttori = (ArrayList<Istruttore>)request.getSession().getAttribute("ELENCO_ISTRUTTORI");
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
	if(submit.equals("INSERT_SOCIO")) {
		String codf = request.getParameter("codf");
		String nome = request.getParameter("Nome");
		String cognome = request.getParameter("Cognome");
		String tel = request.getParameter("Telefono");
		String s = request.getParameter("Sesso");
		String datan = request.getParameter("DataDiNascita");
		socio soc = new socio(codf, nome, cognome, tel,s,datan);
		try {
			DBManager db = new DBManager();
			db.insertSocio(soc);
			request.getSession().removeAttribute("ELENCO_SOCI");
			ArrayList<socio> soci = db.allSocio();
			request.getSession().setAttribute("ELENCO_SOCI",soci);
			response.sendRedirect("socio.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	if(submit.equals("INSERT_ALLENAMENTO")) {
		String id = request.getParameter("idAllenamento");
		String data = request.getParameter("dataAllenamento");
		String nomec = request.getParameter("nomeCorso");
		String ids = request.getParameter("idIstruttore");
		String t = request.getParameter("durataAllenamento");
		int id1 = Integer.parseInt(id);
		allenamento al = new allenamento(id1, data, nomec, ids,t);
		try {
			DBManager db = new DBManager();
			db.insertAllenamento(al);
			request.getSession().removeAttribute("ELENCO_ALLENAMENTI");
			ArrayList<allenamento> allenamenti = new ArrayList<allenamento>();
			allenamenti = db.allAllenamenti();
			request.getSession().setAttribute("ELENCO_ALLENAMENTI",allenamenti);
			response.sendRedirect("allenamento.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
}