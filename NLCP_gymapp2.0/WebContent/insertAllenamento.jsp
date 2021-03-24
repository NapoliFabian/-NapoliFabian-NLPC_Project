<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/insert.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>INSERIMENTO ALLENAMENTI</title>
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
  <div class="insert" >
<form method="POST" action="Gestore">
 <center><table class="scritte" border="0">

     
<!--   
 <tr>
	<th>ProductID</th>
	<th><input type="text" name="txtProductID" maxlength="5" size="60"></th>
 </tr>
-->
  <tr>
	<th>Id allenamento</th>
	<th><input type="text" name="idAllenamento" required ></th>
 </tr>
 
  <tr>
	<th>Data allenamento</th>
	<th><input type="date" name="dataAllenamento" required "></th>
 </tr>
 
  <tr>
	<th>Nome del corso</th>
	<th><input type="text" name="nomeCorso" required ></th>
 </tr>
 
  <tr>
	<th>Id istruttore</th>
	<th><input type="text" name="idIstruttore" required ></th>
 </tr>
 
  <tr>
	<th>Durata allenamento</th>
	<th><input type="text" name="durataAllenamento" ></th>
 </tr>

  <tr>
	<th colspan="2"><input type="submit" name="INSERT" value="INSERT_ALLENAMENTO"></th>
	<th><input type="submit" value="ANNULLA"></th>
 </tr>

  </table></center>
    </div>
 </form>
    <div class="link"><center>
 	<a href="allenamento.jsp"><button>Elenco Allenamenti</button></a>
 	<a href="dashboard.html"><button>Home</button></a></center>
 </div>
</body>
</html>