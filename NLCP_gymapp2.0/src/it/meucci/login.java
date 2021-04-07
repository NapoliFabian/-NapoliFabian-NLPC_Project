package it.meucci;
//
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
	
		System.out.println(username+" "+password);
		
		boolean esito=false;
		//PrintWriter out =response.getWriter();
	//77
			 try {
					GestoreFile load = new GestoreFile();
					System.out.println("1");
					String[] datidb = load.DBSettings();
					DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
					System.out.println("1");
					request.getSession().setAttribute("urldb", datidb[0]);
					request.getSession().setAttribute("userdb", datidb[1]);
					System.out.println("1");
					String datiapp[] = load.getConfig();
					System.out.println("Lingua"+datiapp[1]);
					request.getSession().setAttribute("color", datiapp[0]);
					request.getSession().setAttribute("lang",datiapp[1]);
					request.getSession().setAttribute("nomeapp",datiapp[2]);
					String[] scritte= load.readLan(datiapp[1]);
					request.getSession().setAttribute("lang",scritte);
					request.getSession().setAttribute("current_language",datiapp[1]);
					System.out.println("1");
					String pw = datidb[2];
					String pwstatus="";
					if(pw.equals("")) {
						pwstatus ="NO";
					}
					if(pw.length()>0) {
						pwstatus ="YES";
					}
					request.getSession().setAttribute("pwdb", pwstatus);
				 esito =db.Login(username, password);
				 if(esito==true) {
					 request.getSession().setAttribute("username",username);
					 response.sendRedirect("dashboard.jsp");
					 
				 }
				 else {
					 System.out.println("Non va");
						String errore = "Password o Username invalidi";
						request.getSession().setAttribute("ERROR",errore);
					 response.sendRedirect("errore.jsp");
				 }
			//	 System.out.println(esito);
			 }catch (Exception e) {
				System.out.println("Error on login" +e.getMessage()+e.getCause());
				String errore = "Password o Username invalidi";
				request.getSession().setAttribute("ERROR",errore);
				response.sendRedirect("errore.jsp");
			}
			 
			 
	
			
			 
			 
		
		
		
	}

}
