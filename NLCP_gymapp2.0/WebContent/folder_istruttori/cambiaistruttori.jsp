<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%!
   Utente u;
%>
<%

	u = (Utente)session.getAttribute("ISTRUTTORE_CAMBIA");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiorna ISTRUTTORI</title>
</head>
<body bgcolor="pink">
	 <h1>Aggiornamento Istruttori </h1>
 <br><br><a href="Istruttore.jsp">Home</a><br><br>
 
<form method="POST" action="../GestioneIstruttore?cmd=aggiorna">
 <table border="3" bordercolor="brown" bgcolor="white">

     
  <tr>
	<td>Codice Fiscale</td>
	<td><input type="text" name="Codice Fiscale" value="<%=u.getCodf()%>" required ></td>
 </tr>
 
  <tr>
	<td>nome</td>
	<td><input type="text" name="nome" value="<%=u.getNome()%>"  required ></td>
 </tr>
 
  <tr>
	<td>cognome</td>
	<td><input type="text" name="cognome" value="<%=u.getCognome()%>" required "></td>
 </tr>
 
  <tr>
	<td>telefono</td>
	<td><input type="text" name="telefono" value="<%=u.getTelefono()%>" required></td>
 </tr>
 
  <tr>
	<td>sesso</td>
	<td><input type="text" name="sesso" value="<%=u.getSesso()%>" required ></td>
 </tr>
 
  <tr>
	<td>dataNascita</td>
	<td><input type="date" name="dataNascita" value="<%=u.getDataNascita()%>" required ></td>
 </tr>
 
  <tr>
	<td>username</td>
	<td><input type="text" name="username" value="<%=u.getUsername()%>" required ></td>
 </tr>
 
  <tr>
	<td>email</td>
	<td><input type="text" name="email" value="<%=u.getEmail()%>"required></td>
 </tr>
 
  <tr>
	<td>password</td>
	<td><input type="text" name="password" value="<%=u.getPassword()%>" required></td>
 </tr>
 
   <tr>
	<td>tipou</td>
	<td><input type="text" name="tipou" value="<%=u.getTipou()%>" required></td>
 </tr>
 
  <tr>
	<td colspan="2"><input type="submit" value="INVIA"> <input type="submit" value="ANNULLA"></td>
 </tr>

 </table>
 </form>
</body>
</html>