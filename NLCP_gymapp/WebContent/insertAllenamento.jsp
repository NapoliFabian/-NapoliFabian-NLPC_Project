<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Prodotti</title>
</head>
<body bgcolor="pink">
	 <h1>Inserimento Prodotti</h1>
 <br><br><a href="menu.jsp">Home</a><br><br>
 
<form method="POST" action="GestioneProdotti">
 <table border="3" bordercolor="brown" bgcolor="white">

     
<!--   
 <tr>
	<td>ProductID</td>
	<td><input type="text" name="txtProductID" maxlength="5" size="60"></td>
 </tr>
-->
  <tr>
	<td>Id allenamento</td>
	<td><input type="text" name="idAllenamento" required maxlength="30" size="60"></td>
 </tr>
 
  <tr>
	<td>Data allenamento</td>
	<td><input type="text" name="dataAllenamento" required maxlength="1" size="60"></td>
 </tr>
 
  <tr>
	<td>Nome del corso</td>
	<td><input type="text" name="nomeCorso" required maxlength="1" size="60"></td>
 </tr>
 
  <tr>
	<td>Id istruttore</td>
	<td><input type="text" name="idIstruttore" required maxlength="60" size="60"></td>
 </tr>
 
  <tr>
	<td>Durata allenamento</td>
	<td><input type="text" name="durataAllenamento" maxlength="15" size="60"></td>
 </tr>

  <tr>
	<td colspan="2"><input type="submit" value="INVIA"> <input type="submit" value="ANNULLA"></td>
 </tr>

 </table>
 </form>
</body>
</html>