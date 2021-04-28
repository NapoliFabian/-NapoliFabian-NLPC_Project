<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<%
Utente is;
is = (Utente)session.getAttribute("ISTRUTTORE_DETTAGLIO");
%>
<style>

</style>



<meta charset="ISO-8859-1">
<title>DETTAGLIO</title>
</head>
<body>
<ul class="nav justify-content-center">
  <li class="nav-item">
  
  </li>
  <li class="nav-item">
     <a class="nav-link active" aria-current="page" href="Istruttore.jsp">INDIETRO</a>
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
    <input type="text" class="form-control" id="inputEmail4" value="<%=is.getCodf()%>">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">NOME</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=is.getNome()%>">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">COGNOME</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=is.getCognome()%>">
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label">TELEFONO</label>
    <input type="tel" class="form-control" id="inputEmail4" value="<%=is.getTelefono()%>">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">SESSO</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=is.getSesso()%>">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">DATA DI NASCITA</label>
    <input type="text" class="form-control" id="inputEmail4" value="<%=is.getDataNascita()%>">
  </div>

</center>
<!--  <table>

<tr><th>ID</th><td><%=is.getCodf()%> </td></tr>
<tr><th>NOME</th><td><%=is.getNome()%> </td></tr>
<tr><th>COGNOME</th><td><%=is.getCognome()%> </td></tr>
<tr><th>TELEFONO</th><td><%=is.getTelefono()%> </td></tr>
<tr><th>SESSO</th><td><%=is.getSesso()%> </td></tr>
<tr><th>DATA NASCITA</th><td><%=is.getDataNascita()%> </td></tr>
</table>-->
</body>
</html>