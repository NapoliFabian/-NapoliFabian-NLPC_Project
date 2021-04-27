
<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<link rel="icon" type="image/png" href="img/icona.png"/>
<%
abbonamento ab;
ab = (abbonamento)session.getAttribute("ABBONAMENTO_DETTAGLIO");
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

<tr><th>IDABBONAMENTO</th><td><%=ab.getIdabbonamento()%> </td></tr>
<tr><th>INIZIO</th><td><%=ab.getInizio()%> </td></tr>
<tr><th>FINE</th><td><%=ab.getFine()%> </td></tr>
<tr><th>CODICE FISCALE</th><td><%=ab.getCodf()%> </td></tr>
<tr><th>NOME CORSO</th><td><%=ab.getNomecorso()%> </td></tr>
</table>
</body>
</html>