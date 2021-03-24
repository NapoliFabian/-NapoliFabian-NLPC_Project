<%@ page language="java" import="java.util.*,it.meucci.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<%
ArrayList<socio> soci = new ArrayList<socio>();
ArrayList<Corso> corsi = new ArrayList<Corso>();
try {
	DBManager db;
	db = new DBManager();
	soci= db.allSocio();	
	corsi = db.allCorsi();
} catch (Exception e) {
	System.out.println(e.getMessage());
}
%>
<meta charset="ISO-8859-1">
<title>Inserisci Abbonamento</title>
</head>
<body bgcolor="green">
	 <h1>Inserimento Abbonamenti</h1>
 <br><br><a href="dashboard.html">Home</a><br><br>
 
<form method="POST" action="Gestore">
 <table border="3" bordercolor="brown" bgcolor="white">

     
  <tr>
	<td>ID abbonamento</td>
	<td><input type="text" name="IdAbbonamento" required  ></td>
 </tr>
 
  <tr>
	<td>Inizio</td>
	<td><input type="date" name="inizioabb" required  ></td>
 </tr>
 
  <tr>
	<td>Fine</td>
	<td><input type="date" name="fineabb" required  ></td>
 </tr>
 
  <tr>
	<td>Codice Fiscale</td>
	<td><select name="codf">
	<%for(int i=0;i<soci.size();i++){
		socio s = soci.get(i);
		%>
		<option value="<%=s.getCodf()%>"><%=s.getCodf()%>-<%=s.getCognome()%> <%=s.getNome()%></option>
	<%} %>
	</select></td>
 </tr>
 
  <tr>
	<td>Nome corso</td>
	<td><select name="codf">
	<%for(int i=0;i<corsi.size();i++){
		Corso c = corsi.get(i);
		%>
		<option value="<%=c.getNomecorso()%>"><%=c.getNomecorso()%></option>
	<%} %>
	</select></td>
 </tr>


  <tr>
	<td colspan="2"><input type="submit" name="INSERT" value="INSERT_ABBONAMENTO"> <input type="submit" value="ANNULLA"></td>
 </tr>

 </table>
 </form>
</body>
</html>