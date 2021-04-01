<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%!
  ArrayList <Utente> elenco;
  int i;
  Utente s;
%>
<%

	elenco = (ArrayList <Utente> )session.getAttribute("ELENCO_SOCI");
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


</body>
</html>