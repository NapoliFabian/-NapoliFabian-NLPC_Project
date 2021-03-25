<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%!
  ArrayList<Corso> elenco;
  int i;
  Corso co;
%>

<%

	elenco = (ArrayList<Corso>)session.getAttribute("ELENCO_CORSI");
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
<title>Gestione corsi</title>
</head>
<body>
<div class="header">
<div class="icon">

<img src="img\nuovaicona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP ELENCO CORSI</h1>
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
 	<th>nomecorso</th>
 	<th>prezzo</th>
 	<th>descrizione</th>
 	<th><a href = "insertCorsi.jsp"><img src=img/add.png height="30" width="30"></a> </th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 co=(Corso)elenco.get(i);
    
 %>
 
  <tr>

 	<td><%=co.getNomecorso()%></td>
 	<td><%=co.getPrezzo() %></td>
 	<td><%=co.getDescrizione() %></td>

 </tr>
 
 <%
     }
 %>
 </table>
   </div>
   <div class="bottoni">
  <a href="dashboard.html"><img src=img/home.png height="70" width="70"></a> <br>
  <h3>CORSI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>

 </div>
 </div>
</body>
</html>