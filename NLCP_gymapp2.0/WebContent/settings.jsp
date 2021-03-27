<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
margin:0px;
}
.box{
width:60%;
height:100px;
border:1x solid black;
background-color:#C0C0BC;
padding:16px;
margin-top:30px;
margin-left:230px;
}
.impostazioni{
position:absolute;
background-color:#737873;
top: 20%;
left: 20%;
right: 20%;
width: 60%;
height: 75%;
border-radius: 50px;
text-align: center;
}
select{
width:250px;
height:50px;
border-radius: 50px;
}
input{
width:250px;
height:50px;
border-radius: 50px;
 outline-style: none;
}
header{
width: 100%;
height: 100px;
background-image: linear-gradient(cadetblue,grey);
margin:0px;
}
</style>
<meta charset="ISO-8859-1">
<title>IMPOSTAZIONI</title>
</head>
<body style="background-image: url(images/bg-01.jpg);">
<%
String color = (String)session.getAttribute("color");
String nomeapp = (String)session.getAttribute("nomeapp");
%>
<header>
<a style="float:left" href="optionpage.html"><img src=img/back.png height="50" width="50"></a>
<h1>PERSONALIZZAZIONE</h1>
</header>
<br>
<br>
<form action="changer" method="GET">
<div class="impostazioni">
<div class="box">
<center><h2>COLORE TEMA: <select name="color_change">
<option value="gold">GIALLO ORO</option>
<option value="#66ff66">VERDE</option>
<option value="#05DBFA">AZZURRO</option>
</select></h2></center>
</div>
<br>
<br>
<div class="box">
<center>
<h2>NOME APP:<input type="text" name="title_change" value=<%=nomeapp%>></h2>
</center>
</div>
</div>
<input type="submit" value="invia00">
</form>
</body>
</html>