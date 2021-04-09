<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>






<!DOCTYPE html>
<html>
<head>
<link href="css/insert.css" rel="stylesheet"  type="text/css">
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
<div class="header">
<div class="icon">

<img src="img\icona.png" width="100" height="70">

</div>
<div class="logo">
    <h1 class="titolo">GYM APP</h1>
    </div>
</div>
	 
 <br>
 <br>
 <br>
	  <div class="insert">
 
<form method="POST" action="Gestore">
 <center><table class="scritte" border="0">

 <!--    
  <tr>
	<th>ID abbonamento</th>
	<th><input type="text" name="IdAbbonamento" required  ></th>
 </tr>
 -->
  <tr>
	<th><%=lang[22]%></th>
	<th><input type="date" name="inizioabb" required  ></th>
 </tr>
 
  <tr>
	<th><%=lang[23]%></th>
	<th><input type="date" name="fineabb" required  ></th>
 </tr>
 
  <tr>
	<th><%=lang[21]%></th>
	<th><select name="codf">
	<%for(int i=0;i<soci.size();i++){
		Utente s = soci.get(i);
		%>
		<option value="<%=s.getCodf()%>"><%=s.getCodf()%>-<%=s.getCognome()%> <%=s.getNome()%></option>
	<%} %>
	</select></th>
 </tr>
 
  <tr>
	<th><%=lang[24]%></th>
	<th><select name="NomeCorso">
	<%for(int i=0;i<corsi.size();i++){
		Corso c = corsi.get(i);
		%>
		<option value="<%=c.getNomecorso()%>"><%=c.getNomecorso()%></option>
	<%} %>
	</select></th>
 </tr>


  <tr>
	<th colspan="2"><input type="submit" name="INSERT" value="INSERT_ABBONAMENTO"></th>
	<th><input type="submit" value="ANNULLA"></th>
 </tr>

 </table></center>
  </div>
 </form>
    <div class="link"><center>
 	<a href="abbonamento.jsp"><button>Elenco Abbonamenti</button></a>
 	<a href="dashboard.jsp"><button>Home</button></a></center>
 </div>
</body>
</html>