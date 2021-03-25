<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%!
  ArrayList <Utente> elenco;
  int i;
  Utente s;
%>
<%

	elenco = (ArrayList <Utente> )session.getAttribute("ELENCO_SOCI");
%>

<!DOCTYPE html>
<html>
<head>
 <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
 <style>
body{
margin:0px;
}
table{
background-color: white;
border:1px solid black;
width:70%;
border-collapse: collapse;
}
td{
text-align:center;
padding:15px;
}
th{
	height: 50px;
	background-color: #66ff66;
	color:black;
}
tr:hover{
background-color: lightgreen;
}
.bottoni{
width:30%;
text-align: center;
float:right;
border: 1px solid black;
}
.tabella{
width: 68%;
border: 1px solid black;
float:left;
}
</style>
<meta charset="ISO-8859-1">
<title>Socio</title>
</head>
<body>
<div class="header">
<div class="icon">

<img src="img\nuovaicona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP</h1>
    </div>
</div>
<div>
 <br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br>
 <div class="tabella">
<table>
 
 <tr>
 	<th>COGNOME</th>
 	<th>NOME</th>
 	<th>TELEFONO</th>
 	<th>DATA DI NASCITA</th>
 	<th><a href = "Insertsoci.jsp"><img src=img/add.png height="30" width="30"></a> </th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 s=(Utente)elenco.get(i);
    
 %>
 
  <tr>
 	<td><%=s.getCognome()%></td>
 	<td><%=s.getNome()%></td>
 	<td><%=s.getTelefono()%></td>
 	<td><%=s.getDataNascita()%></td>
 	<td><a href="Gestore?cmd=dettaglioso&id=<%=s.getCodf()%>">Visualizza</a></td>
 	<td><a href="Gestore?cmd=eliminaso&id=<%=s.getCodf()%>">Cancella</a></td>
 	<td><a href="Gestore?cmd=updateso&id=<%=s.getCodf()%>">Aggiorna</a></td>
 </tr>
 
 <%
     }
 %>
 </table>
  </div>
     <div class="bottoni">
  <a href="dashboard.html"><img src=img/home.png height="70" width="70"></a> <br>
  <h3>SOCI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>

 </div>
 </div>





</body>
</html>