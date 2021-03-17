<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%!
  ArrayList<allenamento> elenco;
  int i;
  allenamento a;
%>
<%

	elenco = (ArrayList<allenamento>)session.getAttribute("ELENCO_ALLENAMENTI");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
 <h1>ELENCO ALLENAMENTI</h1>
 <br><br><a href="dashboard.html">Home</a><br><br>
 
 <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <th></th>
 	<th>ID</th>
 	<th>Data</th>
 	<th>Nome corso</th>
 	<th>Durata allenamento</th>
 	<th></th>
 	<th></th>
 </tr>
 
 <% for(i=0;i<elenco.size();i++) 
    {
	 a=(allenamento)elenco.get(i);
    
 %>
 
  <tr>

 	<td><%=a.getIdallenamento()%></td>
 	<td><%=a.getDataallenamento() %></td>
 	<td><%= c.getNomecorso() %></td>
 	<td><%= c.getDurata() %></td>

 </tr>
 
 <%
     }
 %>
 </table>
 
</body>
</html>