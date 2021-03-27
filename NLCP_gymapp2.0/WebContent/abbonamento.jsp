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
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Abbonamento</title>

</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header">ABBONAMENTI</div>
        
        <table cellspacing="0">
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


</body>


</html>