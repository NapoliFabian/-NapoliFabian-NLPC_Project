<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%!
  ArrayList <Utente> elenco;
  int i;
  Utente s;
  Utente soc;
  ArrayList<Utente> ricerca;
%>
<%

	elenco = (ArrayList <Utente> )session.getAttribute("ELENCO_SOCI");
elenco = (ArrayList<Utente>)session.getAttribute("ELENCO_SOCI");
ricerca = (ArrayList<Utente>)session.getAttribute("SOCI_CERCATI");
%>
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<!DOCTYPE html>
<html>
<head>
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">
 <style>
.bottoni{
width:18%;
height:20%;
top:40%;
right: 1%;
text-align: center;
/*background-color: white;*/
background-image:url(https://i2.wp.com/novocom.top/image/Y2xpcJyYXJGFydC1saWJyYXJ5LmNvbQ==/new_gallery/191-1918749_explosion-particle-irregular-background-gold-particles-transparent-background.png);
border: 1px solid black;
position: fixed;
} 
 
 </style>
<meta charset="ISO-8859-1">
<title>Socio</title>
</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header"><%=lang[1]%></div>
        
        <table cellspacing="0">
           <tr>
              <th><%=lang[10]%></th>
              <th><%=lang[11]%></th>
              <th><%=lang[15]%></th>
              <th><%=lang[13]%></th>
              <th colspan="3">
              <a href="Insertsoci.jsp"><img alt="" src="img\add.png" width="30px"></a>
              </th>
           </tr>
     
		   <% for(i=0;i<elenco.size();i++) 
		   {
			s=(Utente)elenco.get(i);
		   
		%>
		
		 <tr><!--  -->
			<td><%=s.getCognome()%></td>
			<td><%=s.getNome()%></td>
			<td><%=s.getTelefono()%></td>
			<td><%=s.getDataNascita()%></td>
			<td><a href="Gestore?cmd=dettaglioso&id=<%=s.getCodf()%>"><img alt="" src="img\lente.png" width="28px"></a></td>
			<td><a href="Gestore?cmd=eliminaso&id=<%=s.getCodf()%>"><img alt="" src="img\cestino.png" width="28px"></a></td>
			<td><a href="Gestore?cmd=updateso&id=<%=s.getCodf()%>"><img alt="" src="img\update.png" width="28px"></a></td>
		</tr>
		
		<%
			}
		%>
     
           
        </table>
        
 </div>
<div class="bottoni">
  <a href="dashboard.jsp"><img src=img/ritornohome.png height="70" width="70"></a> <br>
  <h3>SOCI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>
       <form method="POST" action="Gestore">
  <input type="text" placeholder="Inserisci Cognome" name="socio"><input type="submit" name="INSERT" value="cercaSO">
  <%if(ricerca!=null) {%>
  <%for(i=0;i<ricerca.size();i++) 
  {
	 soc=(Utente)ricerca.get(i);
  
%>
  <br><a href="Gestore?cmd=dettaglioso&id=<%=soc.getCodf()%>"><%=soc.getNome()%> <%=soc.getCognome()%></a>
  <%
     }
 %> 
  <%
     }
 %> 
  </form> 
     </div>
</body>
</html>