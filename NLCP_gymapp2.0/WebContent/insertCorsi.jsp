<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento Corsi</title>
</head>
<body class="bg-img">
<h1>INSERIMENTO CORSO</h1>
 <br><br><a href="Corso.jsp">Elenco Corsi</a><br><br>
 <br><br><a href="dashboard.html">Home</a><br><br>
 
<form action="Gestore" method="POST">
<table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <td>Nome Corso</td>
 	<td><input type="text" name ="NomeCorso" required ></td>
 </tr>
 <tr>
    <td>Prezzo</td>
 	<td><input type="text" name ="Prezzo" required ></td>
 </tr> 
 <tr>
    <td>Descrizione</td>
 	<td><input type="text" name ="Descrizione" required ></td>
 </tr>
 <tr>
 <td><input type="submit" name="INSERT" value="INSERT_CORSO"></td>
 </tr>
 </table>
</form>
</body>
</html>