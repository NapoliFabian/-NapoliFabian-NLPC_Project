<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>









<%
ArrayList<Utente> soci = new ArrayList<Utente>();
ArrayList<Corso> corsi = new ArrayList<Corso>();
try {
	GestoreFile load = new GestoreFile();
	String[] datidb = load.DBSettings();
	DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
	soci= db.allIstruttori();	
	corsi = db.allCorsi();
} catch (Exception e) {
	System.out.println(e.getMessage());
}

%>

<%
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
%>


<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="icon" type="image/png" href="img/icona.png"/>
<meta charset="ISO-8859-1">
<title>INSERIMENTO ALLENAMENTI</title>
</head>
<body style="background-image: url(images/bg-01.jpg);">
<ul class="nav justify-content-center">
  <li class="nav-item">
     <a class="nav-link active" aria-current="page" href="allenamento.jsp">INDIETRO</a>
  </li>
</ul>
  <br>
 <br>


<form method="POST" action="Gestore">
<div  style="width: 60%; margin-left: 20%">
 <div style="background-color: white;border: 1px solid black;width: 100%;">
<center>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">DATA ALLENAMENTO</label>
    <input type="date" class="form-control" id="inputEmail4"   name="dataAllenamento" required>
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[5]%></label>
   <select name="NomeCorso">
	<%for(int i=0;i<corsi.size();i++){
		Corso c = corsi.get(i);
		%>
		<option value="<%=c.getNomecorso()%>"><%=c.getNomecorso()%></option>
	<%} %>
	</select>
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[2]%></label>
   <select name="codf">
	<%for(int i=0;i<soci.size();i++){
		Utente s = soci.get(i);
		%>
		<option value="<%=s.getCodf()%>"><%=s.getCodf()%>-<%=s.getCognome()%> <%=s.getNome()%></option>
	<%} %>
	</select>
  </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[28]%></label>
    <input type="text" class="form-control" id="inputEmail4"   name="durataAllenamento" required  value=""  required="required">
  </div>
<br>
<input type="submit" class="btn btn-primary" name="INSERT" value="INSERT_ALLENAMENTO">
</center>



 </div>
 </div>

<!--   
 <tr>
	<th>ProductID</th>
	<th><input type="text" name="txtProductID" maxlength="5" size="60"></th>
 </tr>
-->
<!--   <tr>
	<th>ID ALLENAMENTO</th>
	<th><input type="text" name="idAllenamento" required ></th>
 </tr>

  <tr>
	<th>DATA ALLENAMENTO</th>
	<th><input type="date" name="dataAllenamento" required "></th>
 </tr>
 
  <tr>
	<th><%=lang[5]%></th>
	<th><select name="NomeCorso">
	<%for(int i=0;i<corsi.size();i++){
		Corso c = corsi.get(i);
		%>
		<option value="<%=c.getNomecorso()%>"><%=c.getNomecorso()%></option>
	<%} %>
	</select></th>
 </tr>
 
  <tr>
  <th><%=lang[2]%></th>
	<th><select name="codf">
	<%for(int i=0;i<soci.size();i++){
		Utente s = soci.get(i);
		%>
		<option value="<%=s.getCodf()%>"><%=s.getCodf()%>-<%=s.getCognome()%> <%=s.getNome()%></option>
	<%} %>
	</select></th>
 </tr>
 
  <tr>
	<th><%=lang[28]%></th>
	<th><input type="text" name="durataAllenamento" ></th>
 </tr>

  <tr>
	<th colspan="2"><input type="submit" name="INSERT" value="INSERT_ALLENAMENTO"></th>
	<th><input type="submit" value="ANNULLA"></th>
 </tr>

  </table></center>  -->  

 </form>
    <div class="link"><center>
 	<a href="allenamento.jsp"><button>Elenco Allenamenti</button></a>
 	<a href="dashboard.jsp"><button>Home</button></a></center>
 </div>
</body>
</html>