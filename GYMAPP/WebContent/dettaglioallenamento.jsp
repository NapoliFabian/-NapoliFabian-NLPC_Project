<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<link rel="icon" type="image/png" href="img/icona.png"/>
<%
ArrayList<Utente> Utente;
allenamento a;
a = (allenamento)session.getAttribute("ALLENAMENTO_DETTAGLIO");
Utente = (ArrayList<Utente>)session.getAttribute("ELENCO_ISTRUTTORI");
Utente u;
String ist ="";
for(int i=0;i<Utente.size();i++)
{
	u = Utente.get(i);
	if(u.getCodf().equals(a.getIds())) {
    ist = u.getNome()+u.getCognome();
	}
}	
%>
<style>

</style>



<meta charset="ISO-8859-1">
<title>DETTAGLIO</title>
</head>
<body>
<div class="header">
<div class="icon">

<img src="img\nuovaicona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP</h1>
    </div>
</div>
<table>

<tr><th>ID</th><td><%=a.getIdallenamento()%> </td></tr>
<tr><th>DATA DELL'ALLENAMENTO</th><td><%=a.getDataallenamento()%> </td></tr>
<tr><th>NOME CORSO</th><td><%=a.getNomecorso()%> </td></tr>
<tr><th>ISTRUTTORE</th><td><%=ist%> </td></tr>
<tr><th>DURATA</th><td><%=a.getDurata()%> </td></tr>
</table>
</body>
</html>