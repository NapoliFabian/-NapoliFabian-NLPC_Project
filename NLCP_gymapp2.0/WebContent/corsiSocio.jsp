<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/dashsocio.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url(https://undesigns.net/wp-content/uploads/2018/02/blue-violet-motion-background-free-download-undesigns.jpg);">
    <header>
    <div class="icon"><img src="img/angolo.png" alt="" width="100%" height="100%"></div>
    <div class="title">GYM APP</div>
    </header>
    <div style="width: 100%;text-align: center;padding-top: 15%">
<%
String username = (String)session.getAttribute("username");
GestoreFile load = new GestoreFile();
String[] datidb = load.DBSettings();
DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
ArrayList<String[]> corsi = new ArrayList<String[]>();
corsi = db.returnCourse(username);

for (int i=0;i<corsi.size();i++){
	String[] corso = corsi.get(i);
%>
<div class="corso">
<div class="immaginecorso">
<img alt="" src="<%=corso[2]%>" width="100%" height="80%"></div> 
<div style="float: left;width: 50%;">
<h1><%=corso[0].toUpperCase()%></h1>
<p><%=corso[1]%></p>
</div>
</div>
<% 
}
%></div>

</body>
</html>