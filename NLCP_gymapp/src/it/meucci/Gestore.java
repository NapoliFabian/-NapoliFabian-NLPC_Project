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
				request.getSession().setAttribute("ELENCO_ISTRUTTORI",allenamenti);
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
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	}
	}
}
