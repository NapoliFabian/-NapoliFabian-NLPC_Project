<%@ page language="java" import="java.util.*,it.meucci.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css"> -->
<%
Utente s;
s = (Utente)session.getAttribute("SOCIO_DETTAGLIO");
%>


<meta charset="ISO-8859-1">
<title>DETTAGLIO</title>

<style>

table{
position:absolute;
width:30%;
height:60%;
top: 25%;
left: 50%;
border-radius: 20px;
border-collapse: collapse;
border-color: black;

}

 table td, table th {
	 color: #2f2f2f;
	 padding: 10px;
	 font-family: Century Gothic;
	
}



th{
background: linear-gradient(to right,#2f2f2f,gold,#2f2f2f);
}

td{
background: rgb(177,176,158);
font-weight: bold;
}

 


</style>

</head>
<body background="images\bg-01.jpg">



<table border="1" >
<tr><th colspan="2">DETTAGLIO</th></tr>
<tr><th>CODICE FISCALE</th> <td><%=s.getCodf()%> </td></tr>
<tr><th>NOME</th><td><%=s.getNome()%> </td></tr>
<tr><th>COGNOME</th><td><%=s.getCognome()%> </td></tr>
<tr><th>TELEFONO</th><td><%=s.getTelefono()%> </td></tr>
<tr><th>SESSO</th><td><%=s.getSesso()%> </td></tr>
<tr><th>DATA NASCITA</th><td><%=s.getDataNascita()%> </td></tr>
</table>


</body>
</html>