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
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">

<meta charset="ISO-8859-1">
<title>Allenamento</title>
</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header">ALLENAMENTI</div>
        
        <table cellspacing="0"><!--  -->
			<tr>
				<th>ID</th>
				<th>DATA</th>
				<th>NOME CORSO</th>
				<th>DURATA ALLENAMENTO</th>
				<th>
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
			<td><a href="Gestore?cmd=aggiornaall&id=<%=a.getIdallenamento()%>"><img alt="" src="img\update.png" width="28px"></a></td>
		 </tr>
		 
		 <%
			 }
		 %>
        </table>
     </div>


</body>
</html>