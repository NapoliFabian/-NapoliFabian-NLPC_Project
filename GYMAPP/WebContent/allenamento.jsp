<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*"%>
<%@ page import="it.meucci.*"%> 
 <%@ page import="java.sql.Date"%>    
    <%!
  ArrayList<allenamento> elenco1;
  ArrayList<allenamento> ricerca;
  int i;
  allenamento a;
  allenamento allc;
%>
<%
	elenco1 = (ArrayList<allenamento>)session.getAttribute("ELENCO_ALLENAMENTI");
	ricerca = (ArrayList<allenamento>)session.getAttribute("ALLENAMENTI_CERCATI");
%>
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">

<meta charset="ISO-8859-1">
<title><%=lang[4]%></title>
<style>
.bottoni{
width:18%;
height:20%;
top:40%;
right: 1%;
text-align: center;
background-image:url(https://i2.wp.com/novocom.top/image/Y2xpcJyYXJGFydC1saWJyYXJ5LmNvbQ==/new_gallery/191-1918749_explosion-particle-irregular-background-gold-particles-transparent-background.png);

border: 1px solid black;
position: fixed;
} 
 
 </style>
</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header"><%=lang[4]%></div>
        
        <table cellspacing="0"><!--  -->
			<tr>
				<th>ID</th>
				<th><%=lang[27]%></th>
				<th><%=lang[24]%></th>
				<th><%=lang[28]%></th>
				<th colspan="3">
				<a href = "insertAllenamento.jsp"><img src=img/add.png height="30" width="30"></a> 
				</th>
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
			 <td><a href="Gestore?cmd=dettaglioall&id=<%=a.getIdallenamento()%>"><img alt="" src="img\lente.png" width="28px"></a></td>
			<td><a href="Gestore?cmd=eliminaall&id=<%=a.getIdallenamento()%>"><img alt="" src="img\cestino.png" width="28px"></a></td>
			<!--  <td><a href="Gestore?cmd=aggiornaall&id=<%=a.getIdallenamento()%>"><img alt="" src="img\update.png" width="28px"></a></td>-->
		 </tr>
		 
		 <%
			 }
		 %>
        </table>
     </div>
<div class="bottoni">
  <a href="dashboard.jsp"><img src=img/ritornohome.png height="70" width="70"></a> <br>
  <h3><%=lang[4]%>: <strong style="color:red"><%=elenco1.size()%></strong></h3>
<form method="POST" action="Gestore">
  <input type="date" placeholder="Data" name="allenamento"><input type="submit" name="INSERT" value="cercaALL">
  <%if(ricerca!=null) {%>
  <%for(i=0;i<ricerca.size();i++) 
  {
	 allc=(allenamento)ricerca.get(i);
  
%>
 <br><h3><%=allc.getNomecorso()%> <%=allc.getIds()%> <%=allc.getDataallenamento()%></h3>
  
  <%
     }
 %> 
  <%
     }
 %> 
 </div>

</body>
</html>