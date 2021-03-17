




<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
<meta charset="ISO-8859-1">
<title>Gestione Istruttore</title>
</head>
<body bgcolor="pink">
 <h1>ELENCO ISTRUTTORE</h1>
 <br><br><a href="dashboard.jsp">Home</a><br><br>
 
 <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <th></th>
 	<th>nome</th>
 	<th>cognome</th>
 	<th>telefono</th>
 	<th></th>
 	<th></th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 is=(Istruttore)elenco.get(i);
    
 %>
 
  <tr>

 	<td><%=is.getNome()%></td>
 	<td><%=is.getCognome() %></td>
 	<td><%=is.getTelefono() %></td>

 </tr>
 
 <%
     }
 %>
 </table>
</body>
</html>