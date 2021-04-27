<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<%@ page import="java.util.*"%>
<%@ page import="it.meucci.*"%>
 <style type="text/css">
  /* ddad*/
/*body{
background-image: url("img/sfondo.jpg");
}
div{
background-color: white;
width:50%;
height:500px;
margin-left:490px;
border-radius: 50px;
text-align:center;
}
a{
text-decoration: none;
font-size:32px;
}
button{
width:100px;
height: 50px;
}*/
 body{
background-image: url("img/sfondo.jpg");
background-color: dodgerblue;
}
table{
background-color: white;
border:1px solid gray;
}
td{
padding:16px;
} 
</style>
<meta charset="ISO-8859-1">
<title>Cambia Cliente</title>
</head>
<body>
<% 
      Corso c = null;
 	  c=(Corso)session.getAttribute("CORSO_DETTAGLIO");
      
     
 	  
      
%>
<form action="CambiaCorso" method="POST">
<table>
	<tr>
	<th> Nome Corso</th>
	<td><input type="text" name="id"  required value=<%=c.getNomecorso()%> readonly="readonly"> </td>
	</tr>
	<tr>
	<th> Prezzo </th>
	<td><input type="text" name="prezzo" required value=<%=c.getPrezzo()%>> </td>
	</tr>
	<tr>
	<th> Descrizione </th>
	<td><input type="text" name="descrizione" required value=<%=c.getDescrizione()%>> </td>
	</tr>
	<tr>
	<th>
	</th>
	<td> <input type="submit" value="invia"></td>
	<td> <a href="Corso.jsp"><input type="submit" value="annulla"></a></td>
	</tr>
 
</table>
</form>
</body>
</html>