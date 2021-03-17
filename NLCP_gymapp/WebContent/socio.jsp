<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%!
  ArrayList <socio> elenco;
  int i;
  socio s;
%>
<%

	elenco = (ArrayList <socio> )session.getAttribute("ELENCO_SOCI");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Socio</title>
</head>
<body>

<table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <th></th>
 	<th>COGNOME</th>
 	<th>NOME</th>
 	<th>TELEFONO</th>
 	<th>DATA DI NASCITA</th>
 	<th></th>
 	<th></th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 s=(socio)elenco.get(i);
    
 %>
 
  <tr>
    <td><a href="Gestore?cmd=dettaglioc&id=<%=c.getId()%>"><img src="img\dettaglio.jpeg" height="30" width="30"></a> </td>
 	<td><%=s.getCognome()%></td>
 	<td><%=s.getNome() %></td>
 	<td><%=s.getTelefono() %></td>
 	<td><%=s.getDatanascita() %></td>
 	<td><a href="Gestore?cmd=aggiornac&id=<%=c.getId()%>"><img src="img\update.jpeg" height="30" width="30"></a></td>
 	<td><a href="Gestore?cmd=eliminac&id=<%=c.getId()%>"><img src="img\elimina.jpg" height="30" width="30"></a></td>
 </tr>
 
 <%
     }
 %>
 </table>






</body>
</html>