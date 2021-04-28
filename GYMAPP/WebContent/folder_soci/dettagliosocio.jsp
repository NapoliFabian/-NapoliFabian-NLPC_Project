<%@ page language="java" import="java.util.*,it.meucci.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- <link href="css/dashboardcss20.css" rel="stylesheet"  type="text/css"> -->
<%
Utente s = null;
ArrayList <Utente> elenco;
String id = request.getParameter("id");
elenco = (ArrayList<Utente>)session.getAttribute("ELENCO_SOCI");
for(int i=0;i<elenco.size();i++){
	s = elenco.get(i);
	if(s.getCodf().equals(id)){break;}}
%>


<meta charset="ISO-8859-1">
<title>DETTAGLIO</title>

<style>
.centrale{

}

table{
position:absolute;
width:30%;
height:60%;
top: 25%;
left: 50%;
border-radius: 20px;
border-collapse: collapse;
border-color: black;

}

 table td, table th {
	 color: #2f2f2f;
	 padding: 10px;
	 font-family: Century Gothic;
	
}



th{
background: linear-gradient(to right,#2f2f2f,gold,#2f2f2f);
}

td{
background: rgb(177,176,158);
font-weight: bold;
}

 


</style>

</head>
<body background="images\bg-01.jpg">
<ul class="nav justify-content-center">
  <li class="nav-item">
  
  </li>
  <li class="nav-item">
     <a class="nav-link active" aria-current="page" href="socio.jsp">INDIETRO</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"></a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
  </li>
</ul>
<br>
<br>
<center>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">CODICE FISCALE</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=s.getCodf()%>">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">NOME</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=s.getNome()%>">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">COGNOME</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=s.getCognome()%>">
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label">TELEFONO</label>
    <input type="tel" class="form-control" id="inputEmail4" value="<%=s.getTelefono()%>">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">SESSO</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=s.getSesso()%>">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">DATA DI NASCITA</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=s.getDataNascita()%>">
  </div>

</center>
<!-- 
<table border="1" >
<tr><th colspan="2">DETTAGLIO</th></tr>
<tr><th>CODICE FISCALE</th> <td><%=s.getCodf()%> </td></tr>
<tr><th>NOME</th><td><%=s.getNome()%> </td></tr>
<tr><th>COGNOME</th><td><%=s.getCognome()%> </td></tr>
<tr><th>TELEFONO</th><td><%=s.getTelefono()%> </td></tr>
<tr><th>SESSO</th><td><%=s.getSesso()%> </td></tr>
<tr><th>DATA NASCITA</th><td><%=s.getDataNascita()%> </td></tr>
</table>
 -->

</body>
</html>