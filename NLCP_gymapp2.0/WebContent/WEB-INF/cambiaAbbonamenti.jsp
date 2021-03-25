
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="java.util.*"%>
<%@ page import="it.meucci.*"%>
 <style type="text/css">
 /* ddd*/
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
 		abbonamento a=null;
		a=(abbonamento)session.getAttribute("ALLENAMENTO_DETTAGLIO");
      
     
      
%>
<form action="CambiaALlenamento" method="POST">
<table>
	<tr>
	<th> ID abbonamento </th>
	<td><input type="text" name="idAbbonamento"  required value=<%=a.getIdabbonamento()%> readonly="readonly"> </td>
	</tr>
	<tr>
	<th> Inizio </th>
	<td><input type="text" name="inizio" required value=<%=a.getInizio()%>> </td>
	</tr>
	<tr>
	<th> Fine</th>
	<td><input type="text" name="fine" required value=<%=a.getFine()%>> </td>
	</tr>
	<tr>
	<th> Codice Fiscale</th>
		<td><input type="text" name="codF" required value=<%=a.getCodf()%>> </td>
	</tr>
	<tr>
	<th> Nome Corso</th>
	<td><input type="text" name="nomeCorso" required value=<%=a.getNomecorso()%>> </td>
	</tr>
	<tr>

	<tr>
	<th>
	</th>
	<td> <input type="submit" value="invia"></td>
	<td> <a href="abbonamento.jsp"><input type="submit" value="annulla"></a></td>
	</tr>
 
</table>
</form>
</body>
</html>