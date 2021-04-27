<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%!
   String id;
   Utente c;
%>
<%
	c = (Utente)session.getAttribute("ISTRUTTORE_CAMBIA");
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiornamento istruttori</title>
</head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<body class="bg-img">
   
<h1>Aggiornamento istruttori</h1>
 <br><br><a href="Istruttore.jsp">Elenco Istruttori</a><br><br>
 <br><br><a href="../dashboard.jsp">Home</a><br><br>
 
  <form class="transparent" method="POST" action="Gestore">
  <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <td>CODICE FISCALE</td>
 	<td><input type="text" readonly="readonly" name ="codf" required value=<%=c.getCodf()%>></td>
 </tr>
 <tr>
    <td>Cognome</td>
 	<td><input type="text" name ="Cognome" required value=<%=c.getCognome()%>></td>
 </tr> 
 <tr>
    <td>Nome</td>
 	<td><input type="text" name ="Nome" required value=<%=c.getNome()%>></td>
 </tr>
 <tr>
    <td>Telefono</td>
 	<td><input type="text" name ="Telefono" required value=<%=c.getTelefono()%>></td>
 </tr> 
  <tr>
    <td>Data Di Nascita</td>
 	<td><input type="text" name ="DataNascita" required value=<%=c.getDataNascita()%>></td>
 </tr>
 <tr>
    <td>Sesso</td>
 	<td><input type="text" name ="Sesso" required value=<%=c.getSesso()%>></td>
 </tr> 
 <tr>
 <tr>
    <td align="center" colspan="2"><input type="reset" value="ANNULLA"> &nbsp;&nbsp;&nbsp;
     					<input type="submit" name="INSERT" value="AGGIORNA SOCIO"></td>
 </tr> 
 </table>
 </form>

</body>
</html>