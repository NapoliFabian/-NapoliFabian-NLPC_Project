<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>








<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="icon" type="image/png" href="img/icona.png"/>
<%
ArrayList<Utente> soci = new ArrayList<Utente>();
ArrayList<Corso> corsi = new ArrayList<Corso>();
try {
	GestoreFile load = new GestoreFile();
	String[] datidb = load.DBSettings();
	DBManager db = new DBManager(datidb[0],datidb[1],datidb[2]);
	soci= db.allSocio();	
	corsi = db.allCorsi();
} catch (Exception e) {
	System.out.println(e.getMessage());
}

%>   
    <% 
String color = (String)session.getAttribute("color");
String[] lang = (String[])session.getAttribute("lang"); 
String filtro;
%>   
    
<meta charset="ISO-8859-1">
<title>Inserisci Abbonamento</title>
</head>
<body style="background-image: url(images/bg-01.jpg);">
<<<<<<< HEAD
<ul class="nav justify-content-center">
  <li class="nav-item">
     <a class="nav-link active" aria-current="page" href="abbonamento.jsp">INDIETRO</a>
  </li>
</ul>

<div class="header">
<div class="icon">


</div>
</div>

	 
 
<form method="POST" action="Gestore">
<div  style="width: 60%; margin-left: 20%">
 <div style="background-color: white;border: 1px solid black;width: 100%;">
 <center>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[22]%></label>
    <input type="date" class="form-control" id="inputEmail4"  name="inizioabb" required  value="" maxlength="16" required="required">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[23]%></label>
    <input type="date" class="form-control" id="inputEmail4"     name="fineabb" required  value="" required="required">
  </div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[21]%></label>
  	<select name="codf">
	<%for(int i=0;i<soci.size();i++){
		Utente s = soci.get(i);
		%>
		<option value="<%=s.getCodf()%>"><%=s.getCodf()%>-<%=s.getCognome()%> <%=s.getNome()%></option>
	<%} %>
	</select>
  </div>
   <div class="col-md-6">
    <label for="inputEmail4" class="form-label"><%=lang[24]%></label>
   <select name="NomeCorso">
	<%for(int i=0;i<corsi.size();i++){
		Corso c = corsi.get(i);
		%>
		<option value="<%=c.getNomecorso()%>"><%=c.getNomecorso()%></option>
	<%} %>
	</select>
  </div>

<br><br><br>
<input type="submit" class="btn btn-primary" name="INSERT" value="INSERT_ABBONAMENTO">
 </center>
 </div>
 </div>
 </form>
 <br>
 <br>
    <div class="link"><center>
 	<a href="abbonamento.jsp"><button>Elenco Abbonamenti</button></a>
 	<a href="dashboard.jsp"><button>Home</button></a></center>
 </div>
</body>
</html>