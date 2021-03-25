<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%!
  ArrayList <Utente> elenco;
  int i;
  Utente s;
%>
<%

	elenco = (ArrayList <Utente> )session.getAttribute("ELENCO_SOCI");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Socio</title>
</head>
<body>
<a href="Insertsoci.jsp">Inserisci</a>

<table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
 	<th>COGNOME</th>
 	<th>NOME</th>
 	<th>TELEFONO</th>
 	<th>DATA DI NASCITA</th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 s=(Utente)elenco.get(i);
    
 %>
 
  <tr><!--  -->
 	<td><%=s.getCognome()%></td>
 	<td><%=s.getNome()%></td>
 	<td><%=s.getTelefono()%></td>
 	<td><%=s.getDataNascita()%></td>
 	<td><a href="Gestore?cmd=dettaglioso&id=<%=s.getCodf()%>">Visualizza</a></td>
 	<td><a href="Gestore?cmd=eliminaso&id=<%=s.getCodf()%>">Cancella</a></td>
 	<td><a href="Gestore?cmd=updateso&id=<%=s.getCodf()%>">Aggiorna</a></td>
 </tr>
 
 <%
     }
 %>
 </table>






</body>
</html>