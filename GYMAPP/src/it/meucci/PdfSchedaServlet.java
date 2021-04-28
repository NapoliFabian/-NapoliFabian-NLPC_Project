
package it.meucci;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StampaClientiPDFServlet
 */
@WebServlet("/pdfclienti")
public class PdfSchedaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PdfSchedaServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	/*	// TODO Auto-generated method stub
		PdfManager pdf;
		ArrayList<Scheda> elenco = new ArrayList<Scheda>();
		elenco = (ArrayList<Scheda>)(request.getSession().getAttribute("ELENCO_CLIENTI"));
		try {
			pdf = new PdfManager();
			pdf.stampaElencoScheda(elenco);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		OutputStream out = null;
		String filePath = "C:\\Users\\Samuel\\Desktop\\eclipse\\prjLoginWebApp_Primiceri\\WebContent\\pdf\scheda.pdf";
		
		File file = new File(filePath);
		
		if(file.exists()) {
			out = response.getOutputStream();
			response.setContentType("application/pdf;charset=UTF-8");
			response.setHeader("Content-Disposition", "inline;filename=clienti.pdf");
			FileInputStream fis = new FileInputStream(file);
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			byte[] buf = new byte[4096];
			
			try {
				for(int readNum; (readNum = fis.read(buf)) != -1;) {
					baos.write(buf, 0, readNum);
				}
			}
			catch(IOException e) {
				e.printStackTrace();
  		
			byte[] bytes = baos.toByteArray();
			int lenghtRead = 0;
			InputStream is = new ByteArrayInputStream(bytes);
			
			while ((lenghtRead = is.read(buf)) > 0) {
				out.write(buf);
			}
			
			fis.close();
			baos.close();
			is.close();
		}
	}*/
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int max=20;
		String ripetizioni[];
		String esercizi[];
		String regioni;
		String socio;
		
		esercizi= new String[max];
		ripetizioni=new String[max];
		regioni= request.getParameter("region");
		socio= request.getParameter("codf");
		
		for(int i=0;i<max;i++) {
			ripetizioni[i]= request.getParameter("rip"+i);
			esercizi[i]= request.getParameter("es"+i);
			
			
		}
		
		PdfManager pdf;
		try {
			pdf = new PdfManager();
			pdf.creaScheda(ripetizioni,esercizi,regioni,socio);
			response.sendRedirect("creaSchede.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
	}

}
