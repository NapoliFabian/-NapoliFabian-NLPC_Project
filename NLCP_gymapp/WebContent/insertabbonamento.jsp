<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Abbonamenti</title>
</head>
<body bgcolor="green">
	 <h1>Inserimento Abbonamenti</h1>
 <br><br><a href="socio.jsp">Home</a><br><br>
 
<form method="POST" action="GestioneProdotti">
 <table border="3" bordercolor="brown" bgcolor="white">

     
  <tr>
	<td>ID abbonamento</td>
	<td><input type="text" name="IdIstruttore" required  ></td>
 </tr>
 
  <tr>
	<td>inizio</td>
	<td><input type="text" name="Nome" required  ></td>
 </tr>
 
  <tr>
	<td>fine</td>
	<td><input type="text" name="Cognome" required  ></td>
 </tr>
 
  <tr>
	<td>Codice Fiscale</td>
	<td><input type="text" name="Telefono" required ></td>
 </tr>
 
  <tr>
	<td>Nome corso</td>
	<td><input type="text" name="Sesso" required ></td>
 </tr>


  <tr>
	<td colspan="2"><input type="submit" value="INVIA"> <input type="submit" value="ANNULLA"></td>
 </tr>

 </table>
 </form>
</body>
</html>