package it.meucci;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registrazione
 */
@WebServlet("/Registrazione")
public class Registrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registrazione() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String codf,email,pw,name;
	codf = request.getParameter("codf");
	email = request.getParameter("email");
	name = request.getParameter("username");
	pw = request.getParameter("pw");
	
	GestoreFile load = new GestoreFile();
	String[] datidb = load.DBSettings();
	try {
		DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
		boolean esito = db.registraSocio(codf, email, pw,name);
		if(esito == true)response.sendRedirect("index.html");

		else {
			String errore = "codice fiscale non presente";
			request.getSession().setAttribute("ERROR",errore);
			response.sendRedirect("errore.jsp");
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}
