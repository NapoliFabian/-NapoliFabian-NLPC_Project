




<%@ page language="java" import="java.util.*,it.meucci.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%!
  ArrayList<Istruttore> elenco;
  int i;
  Istruttore is;
%>

<%

	elenco = (ArrayList<Istruttore>)session.getAttribute("ELENCO_ISTRUTTORI");
%>



<!DOCTYPE html>
<html>
<head>
<link href="css/dashboard.css" rel="stylesheet" type="text/css">

<meta charset="ISO-8859-1">
<title>Gestione Istruttore</title>
</head>
<body>
	<a href="dashboard.html">Home</a>
	<a href="insertIstruttori.jsp">Aggiungi</a>
	<div align="center">
		<table table border="1" style="width: 60%; border-collapse: collapse;">

			<tr>
				<th>nome</th>
				<th>cognome</th>
				<th>telefono</th>
			</tr>

			<% for(i=0;i<elenco.size();i++) 
    {
	 is=(Istruttore)elenco.get(i);
    
 %>

			<tr>

				<td><%=is.getNome()%></td>
				<td><%=is.getCognome() %></td>
				<td><%=is.getTelefono() %></td>
				<td><a href="Gestore?cmd=dettagliois&id=<%=is.getIds()%>">Visualizza</a>
				</td>
			</tr>

			<%
     }
 %>
		</table>
	</div>
</body>
</html>