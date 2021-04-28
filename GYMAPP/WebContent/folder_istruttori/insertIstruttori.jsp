<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
 
 
 
 
    <% 
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
String filtro;
%>   
    
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="icon" type="image/png" href="img/icona.png"/>

<!--<link href="css/elenchi.css" rel="stylesheet"  type="text/css">-->
<meta charset="ISO-8859-1">
<title>Inserisci Istruttori</title>
</head>
<body style="background-image: url(../images/bg-01.jpg);">


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

<form method="POST" action="../Gestore">
<div  style="width: 60%; margin-left: 20%">
 <div style="background-color: white;border: 1px solid black;width: 100%;">
 <center>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[21]%></label>
    <input type="text" class="form-control" id="inputEmail4" name="IdIstruttore" value="" maxlength="16" required="required">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[11]%></label>
    <input type="text" class="form-control" id="inputEmail4"   name ="Nome" value="" required="required">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[10]%></label>
    <input type="text" class="form-control" id="inputEmail4" name ="Cognome"  value="" required="required">
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[12]%></label>
    <input type="tel" class="form-control"  name ="Telefono" id="inputEmail4" value="" required="required">
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label"  required="required">SESSO</label><br>
  <select name="Sesso">
    		<option value="Vuoto"></option>
    		<option value="M">Male</option>
    		<option value="F">Female</option>
    		<option value="Altro">Altro</option> 	
    	</select>
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">DATA DI NASCITA</label>
    <input type="date" class="form-control"  name ="DataNascita" id="inputEmail4" value="" required="required">
  </div>
<br><br><br>
<input type="submit" class="btn btn-primary" name="INSERT" value="INSERT_ISTRUTTORE">
 </center>
</div>
 </div>
 <!--  <div class="insert" >

    <center><table class="scritte" border="1">
    <tr>
    <th><%=lang[21]%></th>
    <th><input type="text" name="IdIstruttore" required maxlength="16"></th>
    </tr>
    
    <tr>
    <th><%=lang[11]%></th>
    <th><input type="text" name="Nome" required></th>
    </tr>
    
    <tr>
    <th><%=lang[10]%></th>
    <th><input type="text" name="Cognome" required></th>
    </tr>
    
    <tr>
    <th><%=lang[12]%></th>
    <th><input type="text" name="Telefono" required></th>
    </tr>
    
    <tr>
    <th>Sesso</th>
    <th><select name="Sesso">
    		<option value="Vuoto"></option>
    		<option value="M">Male</option>
    		<option value="F">Female</option>
    		<option value="Altro">Altro</option> 	
    	</select>
    </th>
    </tr>
    
    <tr>
    <th>Data di nascita</th>
    <th><input type="date" name="DataDiNascita" required></th>
    </tr>
    
    
    <tr>
    <th><input type="reset" value="ANNULLA"></th>
    <th><input type="submit" name="INSERT" value="INSERT_ISTRUTTORE"></th>
    </tr>

 <!--  -->
 
</table></center>
 
 </div>-->
 
 </form>
 <div class="link"><center>
 	<a href="Istruttore.jsp"><button>Elenco Istruttori</button></a>
 	<a href="../dashboard.jsp"><button>Home</button></a></center>
 </div>
 
 
</body>
</html>