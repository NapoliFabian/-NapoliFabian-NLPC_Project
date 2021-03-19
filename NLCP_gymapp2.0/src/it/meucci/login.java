package it.meucci;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
	//	System.out.println(email+" "+password);
		
		String esito=null;
		PrintWriter out =response.getWriter();
	//
		DBManager db = null;
			 try {
				  db = new DBManager();
				 esito =db.Login(username, password);
			//	 System.out.println(esito);
			 }catch (Exception e) {
				System.out.println("Error on login" +e.getMessage()+e.getCause());
			}
			 
			 
			 if(esito=="accede") {
				 response.sendRedirect("dashboard.html");
				 
			 }
			 if (esito=="pwerror") {
				 out.print("<html>"
							+ "<body>"
							+ "<h1>Password errata, <a href='index.html'>Riprova </a></h1>"
							+ "<br>"
							
							+ "</body>"
							+ "</html>");
			 }
			 
			 if (esito=="nonesiste") {
				  out.print("<html>\r\n"
					  		+ "\r\n"
					  		+ "<head>\r\n"
					  		+ "<link rel=\"stylesheet\" href=\"css/login.css\" type=\"text/css\">\r\n"
					  		+ "<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n"
					  		+ "<title>Login</title>\r\n"
					  		+ "</head>\r\n"
					  		+ "\r\n"
					  		+ "\r\n"
					  		+ "<body style=\"background-image: url(img/sfondo.jpg);\">\r\n"
					  		+ "<h1>Utente non registrato  <a href='registrazione.html'>clicca qui per registrarti </a></h1>\\r\\n"
					  		+ "</body>\r\n"
					  		+ "</html>");
			 }
			 if (esito==null) {
				  out.print("<html>\r\n"
					  		+ "\r\n"
					  		+ "<head>\r\n"
					  		+ "<link rel=\"stylesheet\" href=\"css/login.css\" type=\"text/css\">\r\n"
					  		+ "<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n"
					  		+ "<title>Login</title>\r\n"
					  		+ "</head>\r\n"
					  		+ "\r\n"
					  		+ "\r\n"
					  		+ "<body style=\"background-image: url(img/sfondo.jpg);\">\r\n"
					  		+ "<h1>L'email non è presente nel database, <a href='registrazione'>registrati </a></h1>\\r\\n"
					  		+ "</body>\r\n"
					  		+ "</html>");
			 }
		
		
		
	}

}
