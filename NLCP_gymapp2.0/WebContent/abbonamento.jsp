<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
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
 <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Abbonamento</title>
</head>
<body>
<a href="insertabbonamento.jsp">INSERISCI</a>
<table border="3" bordercolor="yellow" bgcolor="white">
 
 <tr>
 	<th>COD. FISCALE</th>
 	<th>INIZIO ABBONAMENTO</th>
 	<th>INIZIO ABBONAMENTO</th>
 	<th>NOME CORSO</th>
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
 	<td><a href="Gestore?cmd=dettaglioabb&id=<%=abb.getIdabbonamento()%>"></a></td>
 </tr>
 
 <%
     }
 %>
 </table>



</body>
</html>