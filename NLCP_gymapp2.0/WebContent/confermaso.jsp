<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%Utente u = (Utente)session.getAttribute("SOCIO_ELIMINA"); %>
<meta charset="ISO-8859-1">
<link href="css/confermais.css" rel="stylesheet"  type="text/css">
<title>eliminazione socio</title>
</head>
<body>
<body style="background-image: url(images/bg-01.jpg);">
<div class="centrale">
<div class="righe">

<img src="img\icona.png" width="100" height="70">
<h1>GYM APP</h1>
<h1>Eliminare <%=u.getNome()%> <%=u.getCognome()%> dal database?</h1>

<a href="Gestore?cmd=confermaso&id=<%=u.getCodf()%>"><input type="submit" class="bottoni" value="SI"></a>   <a href="socio.jsp"><input type="submit" class="bottone" value="NO"></a>
</body>
</html>