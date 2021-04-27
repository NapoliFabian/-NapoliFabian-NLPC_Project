<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="java.util.*"%>
<%@ page import="it.meucci.*"%>
 <style type="text/css">
  /* dadd*/
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
<link rel="icon" type="image/png" href="img/icona.png"/>
<title>Cambia Cliente</title>
</head>
<body>
<% 
 		allenamento a=null;
		a=(allenamento)session.getAttribute("ALLENAMENTO_DETTAGLIO");
      
     
      
%>
<form action="CambiaALlenamento" method="POST">
<table>
	<tr>
	<th> ID Allenamento </th>
	<td><input type="text" name="idAllenamento"  required value=<%=a.getIdallenamento()%> readonly="readonly"> </td>
	</tr>
	<tr>
	<th> Data allenamento </th>
	<td><input type="text" name="dataallenamento" required value=<%=a.getDataallenamento()%>> </td>
	</tr>
	<tr>
	<th> Nome corso </th>
	<td><input type="text" name="nomecorso" required value=<%=a.getNomecorso()%>> </td>
	</tr>
	<tr>
	<th> ID istruttore</th>
		<td><input type="text" name="ids" required value=<%=a.getIds()%>> </td>
	</tr>
	<tr>
	<th> Durata</th>
	<td><input type="text" name="durata" required value=<%=a.getDurata()%>> </td>
	</tr>
	<tr>

	<tr>
	<th>
	</th>
	<td> <input type="submit" value="invia"></td>
	<td> <a href="allenamento.jsp"><input type="submit" value="annulla"></a></td>
	</tr>
 
</table>
</form>
</body>
</html>