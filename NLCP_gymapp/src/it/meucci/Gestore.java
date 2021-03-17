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
				response.sendRedirect("istruttore.jsp");
						
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
