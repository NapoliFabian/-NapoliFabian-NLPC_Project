<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
ArrayList <abbonamento> elenco;
elenco = (ArrayList <abbonamento> )session.getAttribute("ELENCO_ABBONAMENTI");
	String id = request.getParameter("id");
	int confronta = Integer.parseInt(id);
      abbonamento abb = null;
      abbonamento abb1 = null;
	for(int i=0;i<elenco.size();i++) 
{
	abb=(abbonamento)elenco.get(i);
	if(abb.getIdabbonamento()==confronta){
		abb1=abb;
		break;
	}
		
}

      
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rinnova Abbonamento</title>
</head>
<body>

	<form action="Gestore" method="POST">
	<input type="text" name ="idabbonamento" value=<%=abb1.getIdabbonamento()%> readonly="readonly">
		INSERISCI L'INIZIO DELL'ABBONAMENTO<input type="date" name="inizio" required><br>
		INSERISCI LA FINE DELL'ABBONAMENTO<input type="date" name="fine" required><br>
		<input type="submit" name="INSERT" value="RINNOVA ABBONAMENTO">
	</form>
	
</body>
</html>