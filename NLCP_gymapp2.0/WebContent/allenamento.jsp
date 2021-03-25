<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*"%>
<%@ page import="it.meucci.*"%> 
 <%@ page import="java.sql.Date"%>    
    <%!
  ArrayList<allenamento> elenco1;
  int i;
  allenamento a;
%>
<%
	elenco1 = (ArrayList<allenamento>)session.getAttribute("ELENCO_ALLENAMENTI");
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
<title>Allenamento</title>
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
 	<th>ID</th>
 	<th>Data</th>
 	<th>Nome corso</th>
 	<th>Durata allenamento</th>
 	<th><a href = "insertAllenamento.jsp"><img src=img/add.png height="30" width="30"></a> </th>
 </tr>
 
 <% for(i=0;i<elenco1.size();i++) 
    {
	 a=(allenamento)elenco1.get(i);
    
 %>
 
  <tr>
 	<td><%=a.getIdallenamento()%></td>
 	<td><%=a.getDataallenamento() %></td>
 	<td><%= a.getNomecorso() %></td>
 	<td><%= a.getDurata() %></td>
 	<td><a href="Gestore?cmd=dettaglioall&id=<%=a.getIdallenamento()%>">Visualizza</a></td>
    <td><a href="Gestore?cmd=eliminaall&id=<%=a.getIdallenamento()%>">Elimina</a></td>
    <td><a href="Gestore?cmd=aggiornaall&id=<%=a.getIdallenamento()%>">Aggiorna</a></td>
 </tr>
 
 <%
     }
 %>
 </table>
  </div>
     <div class="bottoni">
  <a href="dashboard.html"><img src=img/home.png height="70" width="70"></a> <br>
  <h3>ALLENAMENTI TOTALI: <strong style="color:red"><%=elenco1.size()%></strong></h3>

 </div>
 </div>
</body>
</html>