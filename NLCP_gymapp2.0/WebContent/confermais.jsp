<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%Utente is = (Utente)session.getAttribute("ISTRUTTORE_ELIMINA"); %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url(images/bg-01.jpg);">

<<<<<<< HEAD
<h1>Eliminare <%=is.getNome()%> <%=is.getCognome()%> dal database?</h1>
<a href="Gestore?cmd=confermais"><input type="submit" value="SI"></a>    <a href="Gestore?cmd=noelis"><input type="submit" value="NO"></a>
=======
<div class="header">
<div class="icon">

<img src="img\nuovaicona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP </h1>
    </div>
</div>


<h1 class="">Eliminare <%=is.getNome()%> <%=is.getCognome()%> dal database?</h1>
<a href="Gestore?cmd=confermais"><button class="btn" input type="submit" value="SI" >SI</button></a>    <a href="Gestore?cmd=noelis"><button class="btn" input type="submit" value="NO">NO</button></a>
>>>>>>> branch 'master20' of https://github.com/NapoliFabian/-NapoliFabian-NLPC_Project.git
</body>
</html>