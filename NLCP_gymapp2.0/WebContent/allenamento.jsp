<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*"%>
<%@ page import="it.meucci.*"%> 
    
    <%!
  ArrayList<allenamento> elenco1;
  int i;
  allenamento a;
%>
<%
	elenco1 = (ArrayList<allenamento>)session.getAttribute("ELENCO_ALLENAMENTI");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Allenamento</title>
</head>
<body bgcolor="pink">
 <h1>ELENCO ALLENAMENTI</h1>
 <br><br><a href="dashboard.html">Home</a><br><br>
 <h1>ALLENAMENTI:<%=elenco1.size()%></h1>
 <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <th></th>
 	<th>ID</th>
 	<th>Data</th>
 	<th>Nome corso</th>
 	<th>Durata allenamento</th>
 	<th></th>
 	<th></th>
 </tr>
 
 <% for(i=0;i<elenco1.size();i++) 
    {
	 a=(allenamento)elenco1.get(i);
    
 %>
 
  <tr>

 	<td><%=a.getIdallenamento()%></td>
 	<td><%=a.getDataallenamento() %></td>
 	<td><%= a.getNomecorso() %></td>
 	<td><%= a.getDurata() %></td>
 	<td><a href="Gestore?cmd=dettaglioall&id=<%=a.getIdallenamento()%>">Visualizza</a></td>
    <td><a href="Gestore?cmd=eliminaall&id=<%=a.getIdallenamento()%>">Elimina</a></td>
    <td><a href="Gestore?cmd=aggiornaall&id=<%=a.getIdallenamento()%>">Aggiorna</a></td>

 </tr>
 
 <%
     }
 %>
 </table>
 
</body>
</html>