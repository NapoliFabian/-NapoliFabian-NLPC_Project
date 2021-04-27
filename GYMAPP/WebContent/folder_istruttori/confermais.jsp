<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<%Utente is = (Utente)session.getAttribute("ISTRUTTORE_ELIMINA"); %>
<meta charset="ISO-8859-1">
<link href="../css/confermais.css" rel="stylesheet"  type="text/css">
<title>eliminazione istruttore</title>

</head>
<body style="background-image: url(images/bg-01.jpg);">
<div class="centrale">
<div class="righe">

<img src="../img\icona.png" width="100" height="70">
<h1>GYM APP</h1>
<h1>Eliminare <%=is.getNome()%> <%=is.getCognome()%> dal database?</h1>
<a href="../Gestore?cmd=confermais"><input type="submit" class="bottoni" value="SI"></a>    <a href="../Gestore?cmd=noelis"><input type="submit" class="bottone" value="NO"></a>
</body>
</html>