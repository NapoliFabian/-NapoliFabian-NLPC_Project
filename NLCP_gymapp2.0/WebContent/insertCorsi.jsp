<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
    <th>Nome Corso</th>
    <th><input type="text" name="NomeCorso" required> </th>
    </tr>
    
    <tr>
    <th>Prezzo</th>
    <th><input type="text" name="Prezzo" required></th>
    </tr>
    
    <tr>
    <th>Descrizione</th>
    <th><input type="text" name="Descrizione" required></th>
    </tr>
    
    <tr>
    <th><input type="reset" value="ANNULLA"></th>
    <th><input type="submit" name="INSERT" value="INSERT_SOCIO"></th>
    </tr>

 
 
</table></center>
 
 </div>
 </form>
 <div class="link"><center>
 	<a href="Istruttore.jsp"><button>Elenco Istruttori</button></a>
 	<a href="dashboard.html"><button>Home</button></a></center>
 </div>
 
 
</body>
</html>