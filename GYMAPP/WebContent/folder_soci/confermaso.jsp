<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<%String codf = request.getParameter("id");	
ArrayList<Utente> soci = new ArrayList<Utente>();
soci =(ArrayList<Utente> )request.getSession().getAttribute("ELENCO_SOCI");
Utente u = null;
for(int i=0;i<soci.size();i++) {
	u = soci.get(i);
	if(u.getCodf().equals(codf)) {
		break;
/*	request.getSession().setAttribute("SOCIO_ELIMINA",is);	
	response.sendRedirect("confermaso.jsp");*/
	}
}%>
<meta charset="ISO-8859-1">
<link href="../css/confermais.css" rel="stylesheet"  type="text/css">
<title>eliminazione socio</title>
</head>
<body>
<body style="background-image: url(../images/bg-01.jpg);">
<div class="centrale">
<div class="righe">

<img src="../img\icona.png" width="100" height="70">
<h1>GYM APP</h1>
<h1>Eliminare <%=u.getNome()%> <%=u.getCognome()%> dal database?</h1>

<a href="../Gestore?cmd=confermaso&id=<%=u.getCodf()%>"><input type="submit" class="bottoni" value="SI"></a>   <a href="socio.jsp"><input type="submit" class="bottone" value="NO"></a>
</body>
</html>