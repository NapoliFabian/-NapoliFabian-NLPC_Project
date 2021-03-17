<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Istruttori</title>
</head>
<body bgcolor="pink">
	 <h1>Inserimento Prodotti</h1>
 <br><br><a href="socio.jsp">Home</a><br><br>
 
<form method="POST" action="GestioneProdotti">
 <table border="3" bordercolor="brown" bgcolor="white">

     
<!--   
 <tr>
	<td>ProductID</td>
	<td><input type="text" name="txtProductID" maxlength="5" size="60"></td>
 </tr>
-->
  <tr>
	<td>ID Istruttore</td>
	<td><input type="text" name="IdIstruttore" required maxlength="30" size="60"></td>
 </tr>
 
  <tr>
	<td>Nome</td>
	<td><input type="text" name="Nome" required maxlength="1" size="60"></td>
 </tr>
 
  <tr>
	<td>Cognome</td>
	<td><input type="text" name="Cognome" required maxlength="1" size="60"></td>
 </tr>
 
  <tr>
	<td>Telefono</td>
	<td><input type="text" name="Telefono" required maxlength="60" size="60"></td>
 </tr>
 
  <tr>
	<td>Sesso</td>
	<td><input type="text" name="Sesso" maxlength="15" size="60"></td>
 </tr>
 
  <tr>
	<td>Data di nascita</td>
	<td><input type="text" name="DataDiNascita" maxlength="20" size="60"></td>
 </tr>
 

  <tr>
	<td colspan="2"><input type="submit" value="INVIA"> <input type="submit" value="ANNULLA"></td>
 </tr>

 </table>
 </form>
</body>
</html>