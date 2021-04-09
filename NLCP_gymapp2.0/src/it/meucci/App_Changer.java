package it.meucci;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

/**
 * Servlet implementation class App_Changer
 */
@WebServlet("/changer")
public class App_Changer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public App_Changer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String color=request.getParameter("color_change");
		String title = request.getParameter("title_change");
		String language = (String) request.getSession().getAttribute("current_language");
		GestoreFile load = new GestoreFile();
		try {
			String[] vet =load.setConfig(color, title,language);
			request.getSession().removeAttribute("color");
			request.getSession().removeAttribute("nomeapp");
			//request.getSession().removeAttribute("lang");
			request.getSession().setAttribute("color", vet[0]);
			request.getSession().setAttribute("nomeapp",vet[1]);
			response.sendRedirect("settings.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage()+e.getCause());
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String appname= (String) request.getSession().getAttribute("nomeapp");
			String color = (String)request.getSession().getAttribute("color");
			String flag = request.getParameter("flag");
			GestoreFile file = new GestoreFile();
			String[] vet = file.readLan(flag);
			file.setConfig(color, appname,flag);
			String datiapp[] = file.getConfig();
			request.getSession().removeAttribute("lang");
			request.getSession().setAttribute("current_language",datiapp[1]);
			request.getSession().setAttribute("lang",vet);
			response.sendRedirect("changelanguage.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage()+e.getCause());
		}
	}

}
