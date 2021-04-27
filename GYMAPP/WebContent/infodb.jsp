<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="icon" type="image/png" href="img/icona.png"/>
<%
String urldb = (String)session.getAttribute("urldb");
String user = (String)session.getAttribute("userdb");
String pw = (String)session.getAttribute("pwdb");
String colorstatuspw ="";
if(pw.equals("NO")){
	colorstatuspw = "red";
}
else colorstatuspw = "green";
%>
<meta charset="ISO-8859-1">
<title>INFO DB</title>
</head>
<body style="background-image: -webkit-linear-gradient(top right, #FFFFFF 0%, #AACFEF 100%)">
<header style="width: 100%;
height: 100px;
background-image: linear-gradient(cadetblue,grey); padding-top: 20px">
<h1><a style="float:left" href="optionpage.html"><img src=img/back.png height="50" width="50"></a>&nbsp;&nbsp;&nbsp;INFO DB</h1>
</header>
<div style="float:left;width:23%;margin-left: 50px;padding-top: 25px">
<img src="img\icondb.png" width="200" height="200">
</div>
<div style="float:left;width:70%;height:105px;">
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STATUS: <strong style="color:green">CONNECTED</strong></h1>
</div>
<br>
<br>
<div style="margin-left: 50px;">
<div style="float:left;width:30%;text-align: center">
<h1>URL</h1>
<h3><%=urldb%></h3>
</div>
<div style="float:left;width:30%;text-align: center">
<h1>USER</h1>
<h3><%=user%></h3>
</div>
<div style="float:left;width:30%;text-align: center">
<h1>PASSWORD</h1>
<h3 style="color:<%=colorstatuspw%>"><%=pw%></h3>
</div>
</div>
</body>
</html>