<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css"/>
<meta charset="ISO-8859-1">
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<style>

.centrale .botton{
border: 0px;
color: black;
width: 230px;
height: 70px;
opacity: 100%;
background-color: <%=color%>;
}

</style>
<title>DASHBOARD</title>
<%
String username = (String)session.getAttribute("username");
String nomeapp = (String)session.getAttribute("nomeapp");
if(username!=null){
	%>
</head>
<body style="background-image: url(images/bg-00.jpg);">
<header style="   width:100%;
    height: 100px;
    background-color: #696969;">
<div class="icon">
<img src="img\nuovaicona.png" width="100" height="70">
</div>
<div class="logo">
    <h1 class="titolo" style="color:<%=color%>"><%=nomeapp%></h1>
    </div>
<div style="padding-top:30px;
    width: 10%;
    height: 100%;
    float: right;
    padding: 16px;">
<a href="optionpage.html"><img src="img\imp.png" width="50" height="50"></a>
</div>
 
</header>
<div class="centrale">
    <center>
    <br>
    <h1 style="
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;"><%=lang[0]%><%=username%></h1>
    <br>
</center>
<center><img src="img\usericon.png" width="100" height="70"></center>
<center style="padding-top: 4%;"><a href="Gestore?cmd=allsoc"><button class="botton"><%=lang[1]%></button></a>  <a href="Gestore?cmd=allis"><button class="botton"><%=lang[2]%></button></a></center>
<br>
<center><a href="Gestore?cmd=allabb"><button class="botton"><%=lang[3]%></button></a>   <a href="Gestore?cmd=allal"><button class="botton"><%=lang[4]%></button></a></center>
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