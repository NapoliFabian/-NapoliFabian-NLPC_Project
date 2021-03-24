<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/insert.css" rel="stylesheet"  type="text/css">
<link href="css/elenchi.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Inserisci Istruttori</title>
</head>
<body style="background-image: url(images/bg-01.jpg);">
	 <h1>INSERIMENTO ISTRUTTORI</h1>
 <br><br><a href="socio.jsp">Home</a><br><br>
 
<form method="POST" action="Gestore">


 <div class="insert" >

    <div class="scritte">
    <label>ID Istruttore</label>
    <label>Nome</label>
    <label>Cognome</label>
    <label>Telefono</label>
    <label>Sesso</label>
    <label>Data di nascita</label>
    </div>
  
	<div class="input">
	<input type="text" name="IdIstruttore">
 
 <br>
  
	
	<input type="text" name="Nome">
 
 <br>
  
	
	<input type="text" name="Cognome">
 
 <br>
  
	
	<label><input type="text" name="Telefono"></label>
 
 <br>
  
	
	<input type="text" name="Sesso">
 
 <br>
 
	
	<input type="date" name="DataDiNascita">
 
 <br>
</div>
  
	<td colspan="2"><input type="submit" name="INSERT" value="INSERT_ISTRUTTORE"> <input type="submit" value="ANNULLA"></td>
 

 </div>
 </form>
</body>
</html>