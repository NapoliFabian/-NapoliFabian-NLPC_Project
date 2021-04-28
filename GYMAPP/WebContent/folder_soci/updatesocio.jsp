<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%!
   String id;
   Utente c;
%>
<%

	c = (Utente)session.getAttribute("SOCIO_CAMBIA");
%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" href="img/icona.png"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Aggiorna Socio</title>
</head>
<body class="bg-img">
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

 
  <form class="transparent" method="POST" action="../Gestore">
  <!-- 
  <table border="3" bordercolor="brown" bgcolor="white">
 
 <tr>
    <td>CODICE FISCALE</td>
 	<td><input type="text" readonly="readonly" name ="codf" required value=<%=c.getCodf()%>></td>
 </tr>
 <tr>
    <td>Cognome</td>
 	<td><input type="text" name ="Cognome" required value=<%=c.getCognome()%>></td>
 </tr> 
 <tr>
    <td>Nome</td>
 	<td><input type="text" name ="Nome" required value=<%=c.getNome()%>></td>
 </tr>
 <tr>
    <td>Telefono</td>
 	<td><input type="text" name ="Telefono" required value=<%=c.getTelefono()%>></td>
 </tr> 
  <tr>
    <td>Data Di Nascita</td>
 	<td><input type="text" name ="DataNascita" required value=<%=c.getDataNascita()%>></td>
 </tr>
 <tr>
    <td>Sesso</td>
 	<td><input type="text" name ="Sesso" required value=<%=c.getSesso()%>></td>
 </tr> 
 <tr>
 <tr>
    <td align="center" colspan="2"><input type="reset" value="ANNULLA"> &nbsp;&nbsp;&nbsp;
                    <input type="submit" name="INSERT" value="AGGIORNA SOCIO"></td>
 </tr> 
 </table>
  -->
 <center>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">CODICE FISCALE</label>
    <input type="text" class="form-control" id="inputEmail4" readonly="readonly" name ="codf" value="<%=c.getCodf()%>">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">NOME</label>
    <input type="text" class="form-control" id="inputEmail4"   name ="Nome" value="<%=c.getNome()%>">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">COGNOME</label>
    <input type="text" class="form-control" id="inputEmail4" name ="Cognome"  value="<%=c.getCognome()%>">
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label">TELEFONO</label>
    <input type="tel" class="form-control"  name ="Telefono" id="inputEmail4" value="<%=c.getTelefono()%>">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">SESSO</label>
    <input type="text" class="form-control" name ="Sesso" required id="inputEmail4" value="<%=c.getSesso()%>">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">DATA DI NASCITA</label>
    <input type="date" class="form-control"  name ="DataNascita" id="inputEmail4" value="<%=c.getDataNascita()%>" required="required">
  </div>
<input type="submit" class="btn btn-primary" name="INSERT" value="AGGIORNA SOCIO">
</center> 
 </form>

</body>
</html>