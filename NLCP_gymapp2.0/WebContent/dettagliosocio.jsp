<%@ page language="java" import="java.util.*,it.meucci.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<%
Utente s;
s = (Utente)session.getAttribute("SOCIO_DETTAGLIO");
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

<tr><th>CODICE FISCALE</th><td><%=s.getCodf()%> </td></tr>
<tr><th>NOME</th><td><%=s.getNome()%> </td></tr>
<tr><th>COGNOME</th><td><%=s.getCognome()%> </td></tr>
<tr><th>TELEFONO</th><td><%=s.getTelefono()%> </td></tr>
<tr><th>SESSO</th><td><%=s.getSesso()%> </td></tr>
<tr><th>DATA NASCITA</th><td><%=s.getDataNascita()%> </td></tr>
</table>
</body>
</html>