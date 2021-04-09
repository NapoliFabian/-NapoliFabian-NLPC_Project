<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>









<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>

<!DOCTYPE html>
<html>
<head>
<link href="css/insert.css" rel="stylesheet"  type="text/css">
<!--<link href="css/elenchi.css" rel="stylesheet"  type="text/css">-->
<meta charset="ISO-8859-1">
<title>Inserisci Corsi</title>
</head>
<body style="background-image: url(images/bg-01.jpg);">

<div class="header">
<div class="icon">

<img src="img\icona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP</h1>
    </div>
</div>
	 
 <br>
 <br>
 <br>
<form method="POST" action="Gestore">


 <div class="insert" >

    <center><table class="scritte" border="0">
    <tr>
    <th><%=lang[24]%></th>
    <th><input type="text" name="NomeCorso" required> </th>
    </tr>
    
    <tr>
    <th><%=lang[29]%></th>
    <th><input type="text" name="Prezzo" required></th>
    </tr>
    
    <tr>
    <th><%=lang[30]%></th>
    <th><input type="text" name="Descrizione" required></th>
    </tr>
    
    <tr>
    <th><input type="reset" value="ANNULLA"></th>
    <th><input type="submit" name="INSERT" value="INSERT_CORSO"></th>
    </tr>

 
 
</table></center>
 
 </div>
 </form>
 <div class="link"><center>
 	<a href="Corso.jsp"><button>Elenco Corsi</button></a>
 	<a href="dashboard.jsp"><button>Home</button></a></center>
 </div>
 
 
</body>
</html>