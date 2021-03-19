<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%!
  ArrayList <abbonamento> elenco;
  int i;
  abbonamento abb;
%>
<%

	elenco = (ArrayList <abbonamento> )session.getAttribute("ELENCO_ABBONAMENTI");
%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Abbonamento</title>
</head>
<body>

<table border="3" bordercolor="yellow" bgcolor="white">
 
 <tr>
    <th></th>
 	<th>COD. FISCALE</th>
 	<th>INIZIO ABBONAMENTO</th>
 	<th>INIZIO ABBONAMENTO</th>
 	<th>NOME CORSO</th>
 	<th></th>
 	<th></th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 abb=(abbonamento)elenco.get(i);
    
 %>
 
  <tr>
 	<td><%=abb.getCodf()%></td>
 	<td><%=abb.getInizio()%></td>
 	<td><%=abb.getFine() %></td>
 	<td><%=abb.getNomecorso() %></td>
 </tr>
 
 <%
     }
 %>
 </table>



</body>
</html>