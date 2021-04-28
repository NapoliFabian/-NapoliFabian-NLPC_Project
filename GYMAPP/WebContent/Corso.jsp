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
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>


 <style>
.bottoni{
width:18%;
height:20%;
top:40%;
right: 1%;
text-align: center;
/*background-color: white;*/
/*background-image:url(https://i2.wp.com/novocom.top/image/Y2xpcJyYXJGFydC1saWJyYXJ5LmNvbQ==/new_gallery/191-1918749_explosion-particle-irregular-background-gold-particles-transparent-background.png)*/;
border: 0px solid black;
position: fixed;
} 
 
 </style>









<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">

<meta charset="ISO-8859-1">
<title><%=lang[5]%></title>
</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header"><%=lang[5]%></div>
        
        <table cellspacing="0">
			<tr>
				<th><%=lang[24]%></th>
				<th><%=lang[29]%></th>
				<th width="200px"><%=lang[30]%></th>
				<th colspan="2">
				<a href = "insertCorsi.jsp"><img src=img/add.png height="30" width="30"></a> 
				</th>
			</tr>
     
			<% for(i=0;i<elenco.size();i++) 
			{
			 co=(Corso)elenco.get(i);
			
		 %>
		 
		  <tr>
		
			 <td><%=co.getNomecorso()%></td>
			 <td><%=co.getPrezzo() %></td>
			 <td><%=co.getDescrizione() %></td>
			 <td><a href="Gestore?cmd=eliminaso&id=<%=co.getNomecorso()%>"><img alt="" src="img\cestino.png" width="28px"></a></td>
			 <td><a href="Gestore?cmd=updateso&id=<%=co.getNomecorso()%>"><img alt="" src="img\update.png" width="28px"></a></td>
		
		
		 </tr>
		 
		 <%
			 }
		 %>
		
           
        </table>
     </div>

		 <div class="bottoni">
  <a href="dashboard.jsp"><img src=img/ritornohome.png height="70" width="70"></a> <br>
     </div>
</body>

</html>