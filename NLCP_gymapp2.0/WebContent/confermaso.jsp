<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%Utente u = (Utente)session.getAttribute("SOCIO_ELIMINA"); %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Eliminare <%=u.getNome()%> <%=u.getCognome()%> dal database?</h1>
<a href="Gestore?cmd=confermaso&id=<%=u.getCodf()%>"><input type="submit" value="SI"></a><a href="socio.jsp"><input type="submit" value="NO"></a>
</body>
</html>