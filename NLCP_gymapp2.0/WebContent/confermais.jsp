<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%Utente is = (Utente)session.getAttribute("ISTRUTTORE_ELIMINA"); %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="header">
<div class="icon">


<h1>Eliminare <%=is.getNome()%> <%=is.getCognome()%> dal database?</h1>
<a href="Gestore?cmd=confermais"><input type="submit" value="SI"></a>    <a href="Gestore?cmd=noelis"><input type="submit" value="NO"></a>
</body>
</html>