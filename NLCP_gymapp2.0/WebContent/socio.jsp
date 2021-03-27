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

<!DOCTYPE html>
<html>
<head>
 <link href="css/tabellaCss.css" rel="stylesheet"  type="text/css">
 
<meta charset="ISO-8859-1">
<title>Socio</title>
</head>
<body background="images\bg-01.jpg">

    <div class="table-users">
        <div class="header">Soci</div>
        
        <table cellspacing="0">
           <tr>
              <th>Cognome</th>
              <th>Nome</th>
              <th>Telefono</th>
              <th>Data Di Nascita</th>
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