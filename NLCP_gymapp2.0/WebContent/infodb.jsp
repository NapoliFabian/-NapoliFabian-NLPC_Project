<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String urldb = (String)session.getAttribute("urldb");
String user = (String)session.getAttribute("user");
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header style="width: 100%;
height: 100px;
background-image: linear-gradient(cadetblue,grey)">
<a style="float:left" href="dashboard.html"><img src=img/back.png height="50" width="50"></a>
</header>
<div style="float:left;width:23%;margin-left: 50px;padding-top: 25px">
<img src="img\icondb.png" width="200" height="200">
</div>
<div style="float:left;width:70%;height:105px;">
<h1>STATUS: <strong style="color:green">CONNECTED</strong></h1>
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
</div>
</body>
</html>