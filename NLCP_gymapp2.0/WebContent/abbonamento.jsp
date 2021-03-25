<%@ page language="java" import="java.util.*,it.meucci.*,java.sql.Date" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%!
  ArrayList <abbonamento> elenco;
  int i;
  abbonamento abb;
%>
<%

	elenco = (ArrayList <abbonamento> )session.getAttribute("ELENCO_ABBONAMENTI");
%> 
    
    
<!DOCTYPE html>
<html>
<head>
 <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Abbonamento</title>
<style>
body{
margin:0px;
}
table{
background-color: white;
border:1px solid black;
width:60%;
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
 <br>
 <br>
 <br>
 <br>
  <br>
 <br>
 <br>
 <div>
 <div class="tabella">
 <table>
 
 <tr>
 	<th>COD. FISCALE</th>
 	<th>INIZIO ABBONAMENTO</th>
 	<th>INIZIO ABBONAMENTO</th>
 	<th>NOME CORSO</th>
 	<th><a href = "insertabbonamento.jsp"><img src=img/add.png height="30" width="30"></a> </th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 abb=(abbonamento)elenco.get(i);
    
 %>
 
  <tr>
 	<td><%=abb.getCodf()%></td>
 	<td><%=abb.getInizio()%></td>
 	<td><%=abb.getFine() %></td>
 	<td><%=abb.getNomecorso() %></td>
 	<td><a href="Gestore?cmd=dettaglioabb&id=<%=abb.getIdabbonamento()%>"></a></td>
 </tr>
 
 <%
     }
 %>
 </table>
</div>
     <div class="bottoni">
  <a href="dashboard.jsp"><img src=img/home.png height="70" width="70"></a> <br>
  <h3>ABBONAMENTI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>
 </div>
 </div>


</body>
</html>