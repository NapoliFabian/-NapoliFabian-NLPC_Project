




<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
  ArrayList<Istruttore> elenco;
  ArrayList<Istruttore> ricerca;
  int i;
  Istruttore is;
  Istruttore isc;
%>

<%

	elenco = (ArrayList<Istruttore>)session.getAttribute("ELENCO_ISTRUTTORI");
    ricerca = (ArrayList<Istruttore>)session.getAttribute("ISTRUTTORI_CERCATI");
%>

<!DOCTYPE html>
<html>
<head>

 <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Gestione Istruttore</title>
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
 <div class="tabella">
 <table>
 
 <tr>
 	<th>NOME</th>
 	<th>COGNOME</th>
 	<th>TELEFONO</th>
 	<th colspan="2">OPERAZIONI</th>
 	<th><a href = "insertIstruttori.jsp"><img src=img/add.png height="30" width="30"></a> </th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 is=(Istruttore)elenco.get(i);
    
 %>
 
  <tr>
 	<td><%=is.getNome()%></td>
 	<td><%=is.getCognome() %></td>
 	<td><%=is.getTelefono() %></td>
    <td><a href="Gestore?cmd=dettagliois&id=<%=is.getIds()%>">Visualizza</a></td>
    <td><a href="Gestore?cmd=eliminais&id=<%=is.getIds()%>">Elimina</a></td>
    <td><a href="Gestore?cmd=aggiornais&id=<%=is.getIds()%>">Aggiorna</a></td>
 </tr>
 <%
     }
 %>
 <%; %>
 </table>
 </div>
 <div class="bottoni">
  <a href="dashboard.html"><img src=img/home.png height="70" width="70"></a> <br>
  <h3>ISTRUTTORI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>
  <form method="POST" action="Gestore">
  <input type="text" placeholder="Nome e Cognome" name="istruttore"><input type="submit" name="INSERT" value="cercaIS">
  <%if(ricerca!=null) {%>
  <%for(i=0;i<ricerca.size();i++) 
  {
	 isc=(Istruttore)ricerca.get(i);
  
%>
  <br><a href="Gestore?cmd=dettagliois&id=<%=isc.getIds()%>"><%=isc.getNome()%> <%=isc.getCognome()%></a>
  <%
     }
 %> 
  <%
     }
 %> 
  </form>
 </div>
 </div>
</body>
</html>