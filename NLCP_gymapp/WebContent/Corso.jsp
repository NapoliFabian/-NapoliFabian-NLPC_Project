<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
  ArrayList<Corso> elenco;
  int i;
  Corso co;
%>

<%

	elenco = (ArrayList<Corso>)session.getAttribute("ELENCO_CORSI");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestione corsi</title>
</head>
<body bgcolor="pink">
 <h1>ELENCO corsi</h1>
 <br><br><a href="dashboard.jsp">Home</a><br><br>
 
 <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <th></th>
 	<th>nomecorso</th>
 	<th>prezzo</th>
 	<th>descrizione</th>
 	<th></th>
 	<th></th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 co=(Corso)elenco.get(i);
    
 %>
 
  <tr>

 	<td><%=co.getNomecorso()%></td>
 	<td><%=co.getPrezzo() %></td>
 	<td><%=co.getDescrizione() %></td>

 </tr>
 
 <%
     }
 %>
 </table>
</body>
</html>