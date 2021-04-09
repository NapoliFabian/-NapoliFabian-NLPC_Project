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
<title>Inserisci Soci</title>
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


 <div class="insert">

    <center><table class="scritte" border="0">
    <tr>
    <th><%=lang[21]%></th>
    <th><input type="text" name="codf" required maxlength="16"></th>
    </tr>
    
    <tr>
    <th><%=lang[11]%></th>
    <th><input type="text" name="Nome" required></th>
    </tr>
    <!--  -->
    <tr>
    <th><%=lang[10]%></th>
    <th><input type="text" name="Cognome" required></th>
    </tr>
    
    <tr>
    <th><%=lang[12]%></th>
    <th><input type="text" name="Telefono" required></th>
    </tr>
    
    <tr>
    <th>Sesso</th>
    <th><select name="Sesso">
    		<option value="Vuoto"></option>
    		<option value="M">Male</option>
    		<option value="F">Female</option>
    		<option value="Altro">Altro</option> 	
    	</select>
    </th>
    </tr>
    
    <tr>
    <th>Data di nascita</th>
    <th><input type="date" name="DataDiNascita" required></th>
    </tr>
    
    
    
    <tr>
    <th><input type="reset" value="ANNULLA"></th>
    <th><input type="submit" name="INSERT" value="INSERT_SOCIO"></th>
    </tr>

 
 
</table></center>
 
 </div>
 </form>
 <div class="link"><center>
 	<a href="socio.jsp"><button>Elenco Soci</button></a>
 	<a href="dashboard.jsp"><button>Home</button></a></center>
 </div>
 
 
</body>
</html>