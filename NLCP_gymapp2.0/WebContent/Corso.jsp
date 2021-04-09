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








<!DOCTYPE html>
<html>
<head>
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


</body>

</html>