<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>DASHBOARD</title>
<%
String username = (String)session.getAttribute("username");
if(username!=null){
	%>
</head>
<body style="background-image: url(images/bg-00.jpg);">
<div class="header">
<div class="icon">

<img src="img\nuovaicona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP</h1>
    </div>
</div>
<div class="centrale">
    <center>
    <br>
    <h1 style="
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">BENVENUTO <%=username%></h1>
    <br>
</center>
<center><img src="img\usericon.png" width="100" height="70"></center>
<center style="padding-top: 4%;"><a href="Gestore?cmd=allsoc"><button class="botton">SOCI</button></a>  <a href="Gestore?cmd=allis"><button class="botton">ISTRUTTORI</button></a></center>
<br>
<center><a href="Gestore?cmd=allabb"><button class="botton">ABBONAMENTI</button></a>   <a href="Gestore?cmd=allal"><button class="botton">ALLENAMENTI</button></a></center>
<br>
<center><a href="Gestore?cmd=allco"><button class="botton">CORSI</button></a>   <a><button class="botton">SCHEDE</button></a></center>
<br>
</div>
<div class="footer">
<h3> CREATED BY CATALDO, NAPOLI, LONGO, PRIMICERI</h3>
<h3> ALL RIGHT RESERVER      2021</h3>
</div>
</body>
<% 
}
else{
	response.sendRedirect("SessioneScaduta");
}
%>

</html>