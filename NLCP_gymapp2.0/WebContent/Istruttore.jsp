
<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
  ArrayList<Utente> elenco;
  ArrayList<Utente> ricerca;
  int i;
  Utente is;
  Utente isc;
%>
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<%

	elenco = (ArrayList<Utente>)session.getAttribute("ELENCO_ISTRUTTORI");
    ricerca = (ArrayList<Utente>)session.getAttribute("ISTRUTTORI_CERCATI");
%>

<!DOCTYPE html>
<html>
<head>

 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Gestione Istruttore</title>


</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header"><%=lang[2]%></div>
        
        <table cellspacing="0">
			<tr>
				<th><%=lang[11]%></th>
				<th><%=lang[10]%></th>
				<th><%=lang[15]%></th>
				
				<th colspan="3">
				<a href = "insertIstruttori.jsp"><img src=img/add.png height="30" width="30">
				</a> </th>
			</tr>
     
		   <% for(i=0;i<elenco.size();i++) 
    {
	 is=(Utente)elenco.get(i);
    
 %>
 
  <tr>
 	<td><%=is.getNome()%></td>
 	<td><%=is.getCognome() %></td>
 	<td><%=is.getTelefono() %></td>
    <td><a href="Gestore?cmd=dettagliois&id=<%=is.getCodf()%>"><img alt="" src="img\lente.png" width="28px"></a></td>
    <td><a href="Gestore?cmd=eliminais&id=<%=is.getCodf()%>"><img alt="" src="img\cestino.png" width="28px"></a></td>
    <td><a href="Gestore?cmd=aggiornais&id=<%=is.getCodf()%>"><img alt="" src="img\update.png" width="28px"></a></td>
 </tr>
 <%
     }
 %>
 <%; %>
     
           
</table>
</div>


</body>

</html>