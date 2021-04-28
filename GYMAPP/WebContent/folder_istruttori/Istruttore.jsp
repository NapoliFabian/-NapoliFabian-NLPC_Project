
<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
  ArrayList<Utente> elenco;
  ArrayList<Utente> ricerca;
  int i;
  Utente is;
  Utente isc;
%>
<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>
<%

	elenco = (ArrayList<Utente>)session.getAttribute("ELENCO_ISTRUTTORI");
    ricerca = (ArrayList<Utente>)session.getAttribute("ISTRUTTORI_CERCATI");
%>


<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>

 <link href="../css/tabellaCss.css" rel="stylesheet"  type="text/css">
<meta charset="ISO-8859-1">
<title>Gestione Istruttore</title>

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
<body background="../images\bg-01.jpg">

    <div class="table-users">
        <div class="header"><%=lang[2]%></div>
        
        
        <table cellspacing="0" id="myTable">
			<tr>
			    <th><%=lang[10]%></th>
				<th><%=lang[11]%></th>
				<th><%=lang[12]%></th>
				<th colspan="3">
				<a href = "insertIstruttori.jsp"><img src="../img/add.png" height="30" width="30">
				</a> </th>
			</tr>
     
		   <% for(i=0;i<elenco.size();i++) 
    {
	 is=(Utente)elenco.get(i);
    
 %>
 
  <tr>
  	<td><%=is.getCognome() %></td>
 	<td><%=is.getNome()%></td>
 	<td><%=is.getTelefono() %></td>
    <td><a href="../Gestore?cmd=dettagliois&id=<%=is.getCodf()%>"><img alt="" src="../img\lente.png" width="28px"></a></td>
    <td><a href="../Gestore?cmd=eliminais&id=<%=is.getCodf()%>"><img alt="" src="../img\cestino.png" width="28px"></a></td>
    <!-- <td><a href="../Gestore?cmd=aggiornais&id=<%=is.getCodf()%>"><img alt="" src="../img\update.png" width="28px"></a></td> -->
 </tr>
 <%
     }
 %>
 <%; %>
     
           
</table>
</div>
<div class="bottoni">
  <a href="../dashboard.jsp"><img src=../img/ritornohome.png height="70" width="70"></a> <br>
  <h3>ISTRUTTORI TOTALI: <strong style="color:red"><%=elenco.size()%></strong></h3>
 
  <input type="text" placeholder="Inserisci Cognome" name="socio" id="ricerca" onkeyup="myFunction()">
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
 </div>

</body>

</html>