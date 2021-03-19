<%@ page language="java" import="java.util.*,it.meucci.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
 socio s;
%>
<%

	s = (socio)session.getAttribute("SOCIO_SESSIONE");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dettaglio Socio</title>
</head>
<body bgcolor="pink">
 <h1>ELENCO Soci</h1>
 <br><br><a href="socio.jsp">Elenco Soci</a><br><br>
<!--  <br><br><a href="menu.jsp">Menu</a><br><br>  -->
 <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
 	<th>codicefiscale</th>
 	<th>nome</th>
 	<th>cognome</th>
 	<th>telefono</th>
 	<th>sesso </th>
 	<th>datanascita</th>
 </tr>
 
 
  <tr>
  	<td><%= s.getcodicefiscale() %></td>
 	<td><%= s.getnome() %></td>
 	<td><%= s.getcognome() %></td>
 	<td><%= s.gettelefono() %></td>
 	<td><%= s.getsesso() %></td>
 	<td><%= s.getdatanascita() %></td>
  </tr>
 </table>
</body>
</html>