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

%>
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
 <link href="../css/tabellaCss.css" rel="stylesheet"  type="text/css">
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
<title><%=lang[1]%></title>
</head>
<body background="../images\bg-01.jpg">

    <div class="table-users">
        <div class="header"><%=lang[1]%></div>
        
        <table cellspacing="0" id="myTable">
           <tr>
              <th><%=lang[10]%></th>
              <th><%=lang[11]%></th>
              <th><%=lang[15]%></th>
              <th><%=lang[13]%></th>
              <th colspan="3">
              <a href="Insertsoci.jsp"><img alt="" src="../img\add.png" width="30px"></a>
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
			<td><a href="dettagliosocio.jsp?id=<%=s.getCodf()%>"><img alt="" src="../img\lente.png" width="28px"></a></td>
			<td><a href="confermaso.jsp?id=<%=s.getCodf()%>"><img alt="" src="../img\cestino.png" width="28px"></a></td>
			<td><a href="../Gestore?cmd=updateso&id=<%=s.getCodf()%>"><img alt="" src="../img\update.png" width="28px"></a></td>
		</tr>
		
		<%
			}
		%>
     
           
        </table>
 </div>
<div class="bottoni">
  <a href="../dashboard.jsp"><img src=../img/ritornohome.png height="70" width="70"></a> <br>
  <h3>SOCI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>
  <input type="text" placeholder="Inserisci Cognome" name="socio" id="ricerca" onkeyup="myFunction()">
     </div>
      <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("ricerca");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</body>
</html>