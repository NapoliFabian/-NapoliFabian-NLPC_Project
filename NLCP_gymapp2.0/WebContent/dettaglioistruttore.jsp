<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<%
Utente is;
is = (Utente)session.getAttribute("ISTRUTTORE_DETTAGLIO");
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

<tr><th>ID</th><td><%=is.getCodf()%> </td></tr>
<tr><th>NOME</th><td><%=is.getNome()%> </td></tr>
<tr><th>COGNOME</th><td><%=is.getCognome()%> </td></tr>
<tr><th>TELEFONO</th><td><%=is.getTelefono()%> </td></tr>
<tr><th>SESSO</th><td><%=is.getSesso()%> </td></tr>
<tr><th>DATA NASCITA</th><td><%=is.getDataNascita()%> </td></tr>
</table>
</body>
</html>