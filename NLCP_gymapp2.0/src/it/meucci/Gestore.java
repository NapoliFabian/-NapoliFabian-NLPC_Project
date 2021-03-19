package it.meucci;

import java.io.IOException;
import java.util.ArrayList;

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
}
}